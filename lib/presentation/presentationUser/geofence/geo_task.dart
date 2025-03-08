class GeoTask{
  final String? projectId ;
  final String projectName;
  final String latitude ;
  final String longitude ;
  final String radius ;
  final GeoJob job ;
  GeoTask(
      { this.projectId,
      required this.projectName,
      required this.latitude,
      required this.longitude,
      required this.job,
      required this.radius});

  factory GeoTask.fromJson(Map<String, dynamic> json, {required GeoJob job}) {
    return GeoTask(
      projectId: json['projectId'],
      projectName: json['projectName'],
      latitude: json['latitude'].toString(),
      longitude: json['longtude'].toString(),
      radius: json['radius'],
      job: job,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['projectId'] = projectId;
    data['projectName'] = projectName;
    data['latitude'] = latitude;
    data['longtude'] = longitude;
    data['radius'] = radius;
    return data;
  }
}
enum GeoJob{
  ShiftTracking,
  DTA
}