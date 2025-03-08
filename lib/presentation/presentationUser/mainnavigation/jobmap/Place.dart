import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place with ClusterItem {
  final double latitude;
  final double longitude;
  final int id;
  final int salary;
  final String name;
  final String job;
  final String title;
  Place(
      {required this.latitude,
        required this.longitude,
        required this.name,
        required this.salary,
        required this.job,
        required this.id,
        required this.title});
  @override
  LatLng get location => LatLng(latitude, longitude);
}
