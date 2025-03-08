import 'package:google_maps_flutter/google_maps_flutter.dart';

class DrawPolygonWithMarkersArgs {
  bool isOnlyView;
  List<LatLng> latlngs;

  DrawPolygonWithMarkersArgs({
    this.isOnlyView = false,
    required this.latlngs,
  });
}
