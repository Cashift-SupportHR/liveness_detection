 import 'dart:ui' as ui;
import 'package:flutter/services.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
 import 'package:shiftapp/generated/assets.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
   import 'package:shiftapp/presentation/shared/components/index.dart';


import '../../../../../../../main_index.dart';

import '../../../../domain/entities/vehicle_location.dart';


class CurrentLocationVehicleMapWidget extends StatefulWidget {
  final VehicleLocation state;

  CurrentLocationVehicleMapWidget({
    Key? key,
    required this.state,

   }) : super(key: key);

  @override
  _CurrentLocationVehicleMapWidgetState createState() =>
      _CurrentLocationVehicleMapWidgetState();
}

class _CurrentLocationVehicleMapWidgetState extends State<CurrentLocationVehicleMapWidget> {
  late GoogleMapController mapController;
  List<LatLng> polygonPoints = [];
  Set<Polygon> polygons = Set<Polygon>();
  Set<Marker> markers = Set<Marker>();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    displayPolygonPoints();
  }

  void _clearPolygon() {
    setState(() {
      polygonPoints.clear();
      polygons.clear();
      markers.clear(); // Clear the markers as well
    });
  }

  late AppLocalizations strings;



  bool canPop = false;

  @override
  Widget build(BuildContext context) {
    strings = context.getStrings();
    canPop = MyModalRoute.of(context)?.canPop ?? false;

    return Container(
      height: 350,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: Decorations.shapeDecorationShadow(),
      child: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Set the initial location
              zoom: 16, // Set the initial zoom level
            ),
            polygons: polygons,
            markers: markers,
            // Display markers on the map
            // onTap: _onTap, // Register tap events
          ),

        ],
      ),
    );
  }



  LatLngBounds _calculatePolygonBounds(List<LatLng> polygonCoordinates) {
    double north = polygonCoordinates.first.latitude;
    double south = polygonCoordinates.first.latitude;
    double east = polygonCoordinates.first.longitude;
    double west = polygonCoordinates.first.longitude;

    for (var coord in polygonCoordinates) {
      if (coord.latitude > north) north = coord.latitude;
      if (coord.latitude < south) south = coord.latitude;
      if (coord.longitude > east) east = coord.longitude;
      if (coord.longitude < west) west = coord.longitude;
    }

    return LatLngBounds(
      northeast: LatLng(north, east),
      southwest: LatLng(south, west),
    );
  }





  Future<Set<Marker>> mapPointsMarkers(List<LatLng> polygonPoints) async {
    if (polygonPoints.isEmpty) {
      return Set();
    }
    Uint8List iconData =
    await loadAndResizePng(Assets.imagesLocation, width: 50, height: 50);
    final list = polygonPoints.map((e) {
      return Marker(
        markerId: MarkerId('marker_${e}'),
        position: e,
        icon: BitmapDescriptor.fromBytes(iconData),
      );
    }).toList();
    return Set<Marker>.of(list);
  }

  Set<Polygon> mapPolygons(List<LatLng> polygonPoints) {
    if (polygonPoints.isEmpty) {
      return Set();
    }
    final list = polygonPoints.map((e) {
      return Polygon(
        polygonId: PolygonId('polygon_${e}'),
        points: polygonPoints,
        strokeWidth: 2,
        strokeColor: kPrimary,
        fillColor: kPrimary.withOpacity(0.1),
      );
    }).toList();
    return Set<Polygon>.of(list);
  }

  Future<void> displayPolygonPoints() async {
    List<LatLng> polygonPoints =  widget.state.zone!.map((e) =>LatLng(e.lat??0, e.lng??0) ,).toList();
    print('polygonPoints: $polygonPoints');
    if (polygonPoints.isNotEmpty) {
      polygons = mapPolygons(polygonPoints);
      markers = await mapPointsMarkers(polygonPoints);
      mapController.animateCamera(
        CameraUpdate.newLatLngBounds(
            _calculatePolygonBounds(polygonPoints), 50), // 50 is padding
      );
      setState(() {});
    } else {
      _clearPolygon();
    }
  }

  Future<Uint8List> loadAndResizePng(String assetPath,
      {int width = 100, int height = 100}) async {
    // Load the PNG image as Uint8List
    final ByteData data = await rootBundle.load(assetPath);

    // Decode the image to resize it
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width, targetHeight: height);
    ui.FrameInfo frameInfo = await codec.getNextFrame();

    // Convert the resized image back to Uint8List
    final ByteData? byteData =
    await frameInfo.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }


}
