import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:shiftapp/generated/assets.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/shared/components/index.dart';

import '../../../../../../../main_index.dart';
import '../../../../domain/entities/vehicle_location.dart';

class CurrentLocationVehicleMapWidget extends StatefulWidget {
  final VehicleLocation state;

  const CurrentLocationVehicleMapWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  _CurrentLocationVehicleMapWidgetState createState() =>
      _CurrentLocationVehicleMapWidgetState();
}

class _CurrentLocationVehicleMapWidgetState
    extends State<CurrentLocationVehicleMapWidget> {
  late GoogleMapController mapController;
  Set<Polygon> polygons = {};
  Set<Marker> markers = {};
  BitmapDescriptor? _vehicleIcon;

  @override
  void initState() {
    super.initState();
    _initVehicleIcon();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CurrentLocationVehicleMapWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldLocation = oldWidget.state.currentLocation;
    final newLocation = widget.state.currentLocation;

    if (_vehicleIcon == null) return;

    if (newLocation != null &&
        newLocation.lat != null &&
        newLocation.lng != null &&
        (oldLocation?.lat != newLocation.lat ||
            oldLocation?.lng != newLocation.lng)) {
      final position = LatLng(
        newLocation.lat!.toDouble(),
        newLocation.lng!.toDouble(),
      );
      _updateVehicleMarker(position);
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    displayPolygonPoints();
  }

  Future<void> _initVehicleIcon() async {
    final Uint8List iconData = await loadAndResizePng(
      "assets/icons/car_orange.png",
      width: 50,
      height: 50,
    );
    _vehicleIcon = BitmapDescriptor.fromBytes(iconData);

    final loc = widget.state.currentLocation;
    if (loc != null && loc.lat != null && loc.lng != null) {
      _updateVehicleMarker(LatLng(loc.lat!.toDouble(), loc.lng!.toDouble()));
    }
  }

  void _updateVehicleMarker(LatLng newPosition) {
    final updatedMarker = Marker(
      markerId: MarkerId('vehicle_marker'),
      position: newPosition,
      icon: _vehicleIcon!,
      rotation: 0,
      anchor: Offset(0.5, 0.5),
    );

    setState(() {
      // احذف فقط ماركر السيارة القديم
      markers.removeWhere((m) => m.markerId.value == 'vehicle_marker');
      markers.add(updatedMarker);
    });

    // حرك الكاميرا تلقائيًا
    mapController.animateCamera(CameraUpdate.newLatLng(newPosition));
  }

  @override
  Widget build(BuildContext context) {
    final strings = context.getStrings();

    return Container(
      height: 350,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: Decorations.shapeDecorationShadow(),
      child: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            buildingsEnabled:true ,
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194),
              zoom: 16,
            ),
            polygons: polygons,
            markers: markers,
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
    if (polygonPoints.isEmpty) return {};

    Uint8List iconData = await loadAndResizePng(
      Assets.imagesLocation,
      width: 50,
      height: 50,
    );

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
    if (polygonPoints.isEmpty) return {};

    return {
      Polygon(
        polygonId: PolygonId('zone_polygon'),
        points: polygonPoints,
        strokeWidth: 2,
        strokeColor: kPrimary,
        fillColor: kPrimary.withOpacity(0.1),
      ),
    };
  }

  Future<void> displayPolygonPoints() async {
    List<LatLng> polygonPoints = widget.state.zone
        ?.map((e) => LatLng(e.lat ?? 0, e.lng ?? 0))
        .toList() ??
        [];

    if (polygonPoints.isNotEmpty) {
      polygons = mapPolygons(polygonPoints);

      Set<Marker> zoneMarkers = await mapPointsMarkers(polygonPoints);

      Marker? vehicleMarker = markers.firstWhere(
            (m) => m.markerId.value == 'vehicle_marker',
        orElse: () => Marker(markerId: MarkerId('invalid')),
      );

      setState(() {
        markers = zoneMarkers;

        if (vehicleMarker.markerId.value == 'vehicle_marker') {
          markers.add(vehicleMarker);
        }
      });

      mapController.animateCamera(
        CameraUpdate.newLatLngBounds(
          _calculatePolygonBounds(polygonPoints),
          50,
        ),
      );
    } else {
      _clearPolygon();
    }
  }

  void _clearPolygon() {
    setState(() {
      polygons.clear();
      markers.removeWhere((m) => m.markerId.value != 'vehicle_marker');
    });
  }

  Future<Uint8List> loadAndResizePng(String assetPath,
      {int width = 100, int height = 100}) async {
    final ByteData data = await rootBundle.load(assetPath);

    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetWidth: width,
      targetHeight: height,
    );
    ui.FrameInfo frameInfo = await codec.getNextFrame();

    final ByteData? byteData =
    await frameInfo.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }
}
