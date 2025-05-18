
import 'package:geocoding/geocoding.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shiftapp/extensions/extensions.dart';
import '../../../../../data/models/add-address/address.dart';
import '../../../../shared/components/base_stateless_widget.dart';
import '../../../../shared/components/map/map_constants.dart';
import '../../../common/common_state.dart';
import '../../../locationservice/locationservice.dart';
import '../../../mainnavigation/jobmap/jobs_map_screen.dart';
import '../widgets/detect_my_location_button.dart';
import '../widgets/location_details_sheet.dart';

class AddAddressScreen extends BaseStatelessWidget {
  final Address? address;
  final Function(Address) onAddressAdded;
  AddAddressScreen({Key? key,  required this.onAddressAdded, this.address}) : super(key: key);



  GoogleMapController? _controller;
  TextEditingController controller = TextEditingController();
  final StreamState<LatLng> _stream = StreamStateInitial();
  @override
  Widget build(BuildContext context) {
    LocationData? _initialPosition;
    return Stack(
      alignment: Alignment.center,
      children: [
        MapWidget(
        address: address,
          onMapCreated: (controller) async{
            _controller = controller;
            final isLocationEnabled = await Permission.location.request();
            if (isLocationEnabled.isGranted) {
              return fetchLocation(onGetLocation: (LocationData location) {
                _initialPosition = location;
                this.controller.text = location.latitude.toString() + ',' + location.longitude.toString();
                print('location ${location.latitude} ${location.longitude}');
                _controller!.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                        target: LatLng(location.latitude!, location.longitude!), zoom: 14.0)));
                _stream.setData(LatLng(location.latitude!, location.longitude!));
                return _initialPosition;

              });
            } else {
              print('location not enabled');
            }

          },
          onAddressAdded: (address) {
            onAddressAdded(address);
          },
          controller: controller,
          lastUserLocation: _stream,
        ),
      ],
    );
  }
}


class MapWidget extends StatefulWidget {
  final Address? address;
  StreamState<LatLng> lastUserLocation;
  TextEditingController? controller;
  final Function(GoogleMapController) onMapCreated;
  final Function(Address) onAddressAdded;
  MapWidget({Key? key, required this.onMapCreated, required this.controller, required this.onAddressAdded, required this.lastUserLocation, this.address}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MapWidgetState();
  }
}

class MapWidgetState extends State<MapWidget> {

  Set<Marker> _markers = Set();
  GoogleMapController? mapController;

  var locationFeched = false;
  double initZoom = 14;
  String address = '';
  StreamState<LatLng> myLocationController = StreamStateInitial();

  TextEditingController addressDetailsController = TextEditingController();
  LatLng myLocation = const LatLng(0, 0);

   StreamState<bool> streamController = StreamStateInitial();
  @override
  Widget build(BuildContext context) {
    print('build called ${widget.controller!.text}');
    if (widget.address?.id != null ) {
      address = widget.address!.name!;
      addressDetailsController.text = widget.address!.details!;
      _markers.add(buildMarker(
        LatLng(double.parse(widget.address!.latitude.toString()), double.parse(widget.address!.langitude.toString())),
      ));
      streamController.setData(true);
    }
    return Stack(
      children: [
        GoogleMap(
          compassEnabled: true,
          mapToolbarEnabled: true,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          zoomGesturesEnabled: true,
          zoomControlsEnabled: true,
          onMapCreated: (controller) async {
            mapController = controller;
            mapController!.setMapStyle(getMapStyle());
            widget.onMapCreated(controller);
          },
          onTap: (latLng) async{
              _markers.clear();
              widget.address?.langitude = latLng.longitude.toString();
              widget.address?.latitude = latLng.latitude.toString();
              LatLng latLng1 = LatLng(
                double.parse(widget.address?.latitude.toString() ?? latLng.latitude.toString()),
                double.parse(widget.address?.langitude.toString() ?? latLng.longitude.toString()),
              );
              _markers.add(buildMarker(latLng1));

            List<Placemark> placemarks = await placemarkFromCoordinates(latLng1.latitude, latLng1.longitude);
              widget.address!.name = '${placemarks.first.street}, ${placemarks.first.administrativeArea} ${placemarks.first.subAdministrativeArea}';
              address = widget.address!.name!;
              streamController.setData(true);
            setState(() {});
          },
          markers: Set<Marker>.of(_markers),
          initialCameraPosition: CameraPosition(
            target: _markers.isNotEmpty
                ? _markers.first.position
                : const LatLng(24.78878, 46.6989),
            zoom: 5.0,
          ),
        ),

        StreamBuilder<LatLng>(
          stream: widget.lastUserLocation.stream,
          builder: (context, snapshot) {
            return DetectMyLocationButton(
              bottom: 280,
              onPressed: () async {
                LocationData location = await _location(context);
                LatLng latLng = LatLng(location.latitude!, location.longitude!);
                mapController!.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                        target: latLng, zoom: initZoom)));
              },
            );
          }
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchPlacesWidget(
            onSelectPlace: (place) async{
              _markers.clear();
              _markers.add(buildMarker(place.latLng));
              mapController!.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                      target: place.latLng, zoom: initZoom)));
             // widget.fetchLocationName(place.formattedAddress!);
              address = place.name;
              setState(() {});
             // streamController.setData(place.name);
            }, offers: [],
          ),
        ),
        LocationDetailsSheet(
          locationName: widget.address!.name ?? '',
          controller: addressDetailsController,
          streamController: streamController,
          addAddressDetails: (addressDetails){
              widget.onAddressAdded(
                  Address(
                    id: widget.address?.id,
                    name: address,
                      details: addressDetails,
                      latitude: _markers.first.position.latitude.toString(),
                      langitude: _markers.first.position.longitude.toString()
                  )
              );
            },
        )
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

  detectAddress(){
    print('detectAddress');
    if (widget.address?.id != null ) {
      address = widget.address!.name!;
      addressDetailsController.text = widget.address!.details!;
      _markers.add(buildMarker(
        LatLng(double.parse(widget.address!.latitude.toString()), double.parse(widget.address!.langitude.toString())),
      ));
      streamController.setData(true);
    }  else {
    }
  }
  Future<LocationData> _location(BuildContext context) async {
    try {
      final position = await LocationService.determinePosition(context);
      return position;
    } catch (e) {
      return Future.error(e);
    }
  }
}



