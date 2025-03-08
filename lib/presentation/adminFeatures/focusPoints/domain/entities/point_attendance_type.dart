import 'package:json_annotation/json_annotation.dart';

import '../../data/models/point_attendance_type_dto.dart';


@JsonSerializable(ignoreUnannotated: true)
class PointAttendanceType{
  int? id;
  String? name;

  PointAttendanceType({this.id, this.name});

   factory PointAttendanceType.fromJson(PointAttendanceTypeDto json) {
      return PointAttendanceType(
          id: json.id,
          name: json.name,
      );
   }
}

