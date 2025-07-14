import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../common/common_state.dart';
import '../../resources/colors.dart';
import 'map_picker_item.dart';
import 'map_prediction.dart';
import 'map_search.dart';

///  Created by harbey on 9/11/2023.
class MapWidgetPicker extends StatefulWidget {
  final LatLng? initialLatLng;
  GoogleMapController? mapController;
  final Function(GoogleMapController) onMapCreated;
  final Function(LatLng)? onTap;
  final Function(LatLng)? onCreatedLocation;
  final StreamStateInitial<List<MapPrediction>?> predictionsSearchStream;
  StreamStateInitial<MapPickerItem?> placeDetailsStream;
  final Function(String) onSearch;
  final Function(MapPrediction) onSelectPlace;
  MapWidgetPicker(
      {Key? key,
        this.initialLatLng,
        required this.onMapCreated,
        this.onTap,
        this.onCreatedLocation,
        this.mapController,
        required this.predictionsSearchStream,
        required this.placeDetailsStream,
        required this.onSearch,
        required this.onSelectPlace,
      })
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MapWidgetState();
  }
}

class MapWidgetState extends State<MapWidgetPicker> {
  BitmapDescriptor? markerIcon;
  //PlacesSearchResult? selectedPlace;
  Set<Marker> _markers = Set();
  // GoogleMapController? mapController;
  LatLng? lastUserLocation;
  var locationFeched = false;
  double initZoom = 14;

  @override
  initState() {
    super.initState();
  }


  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Geolocator.openAppSettings();
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      Geolocator.openAppSettings();
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  detectMyLocation() async {
    lastUserLocation = widget.initialLatLng ?? lastUserLocation;
    if (lastUserLocation != null) {
      final p = CameraPosition(
          target:
          LatLng(lastUserLocation!.latitude, lastUserLocation!.longitude),
          zoom: initZoom);
      widget.mapController?.animateCamera(CameraUpdate.newCameraPosition(p));

      print('detectMyLocation lastUserLocation ${lastUserLocation!.latitude} , ${lastUserLocation!.longitude}');
      if(widget.onCreatedLocation!=null){
        widget.onCreatedLocation!(lastUserLocation!);
      }
    }
    print('detectMyLocation');

    _determinePosition().then((value) {
      print('detectMyLocation focusToPosition');
      focusToPosition(value);
    }, onError: (e) async {
      await Geolocator.openLocationSettings();
    });
  }

  focusToPosition(Position position) {
    final p = CameraPosition(
        target: LatLng(position.latitude, position.longitude), zoom: initZoom);
    lastUserLocation = LatLng(position.latitude, position.longitude);
    widget.mapController?.animateCamera(CameraUpdate.newCameraPosition(p));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StreamBuilder<MapPickerItem?>(
            stream: widget.placeDetailsStream.stream,
            builder: (context, snapshot) {
              if(snapshot.data!=null){
                LatLng latLng = snapshot.data!.getLatLng();
                _markers.clear();
                _markers.add(buildMarker(latLng));
                onZoom(latLng);
              }
            return GoogleMap(
              compassEnabled: true,
              mapToolbarEnabled: true,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              // onCameraMove: _manager.onCameraMove,
              // onCameraIdle: _manager.updateMap,
              onMapCreated: (controller) async {
                widget.mapController = controller;
                widget.mapController!.setMapStyle(getMapStyle());
                // _manager.setMapId(controller.mapId);
                await widget.onMapCreated(widget.mapController!);
                detectMyLocation();
              },
              markers: Set<Marker>.of(_markers),
              initialCameraPosition: CameraPosition(
                target: _markers.isNotEmpty
                    ? _markers.first.position
                    : const LatLng(24.78878, 46.6989),
                zoom: 5.0,
              ),
              onTap: (latLng) async {
                if(widget.onTap!=null){
                  onTap(latLng);
                }
              },
            );
          }
        ),
        MapSearch(
          onSearch: (value) {
            widget.onSearch(value);
          },
          predictionsSearchStream: widget.predictionsSearchStream,
          onSelectPlace: (item) {
            print('onSelectPlace ${item.toJson()}');
            widget.onSelectPlace(item);
          },
        ),
        PositionedDirectional(
          start: 10,
          bottom: 230,
          child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 8, start: 1),
              child: FloatingActionButton(
                backgroundColor: kWhiteOff,
                onPressed: () {
                  detectMyLocation();
                },
                child:  Icon(
                  Icons.my_location,
                  color: kPrimaryDark,
                ),
              )),
        ),
      ],
    );
  }

  buildMarker(LatLng location, {BitmapDescriptor? icon}) {
    print('location $location');
    return icon != null
        ? Marker(
        markerId: const MarkerId('120'),
        position: location,
        icon: icon,
        infoWindow: InfoWindow(title: location.toString()))
        : Marker(
        markerId: const MarkerId('120'),
        position: location,
        infoWindow: InfoWindow(title: location.toString()));
  }

  onTap(LatLng latLng) async {
    print('onTap ${latLng.latitude} , ${latLng.longitude}');
    _markers.clear();
    _markers.add(buildMarker(latLng));

    widget.onTap!(latLng);
    setState(() {});
  }

  onZoom(LatLng? latLng) {
    if (latLng == null) return;
    widget.mapController?.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(target: latLng, zoom: 18)),
    );
  }

  String? getMapStyle() {
    return '''
    [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#000"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#000"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#67C1CA"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#000"
      }
    ]
  }
]
    ''';
  }
}
