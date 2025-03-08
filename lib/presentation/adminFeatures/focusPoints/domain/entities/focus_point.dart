import 'package:shiftapp/presentation/adminFeatures/focusPoints/domain/entities/shift_focus_point.dart';

import '../../data/models/focus_point_dto.dart';

class FocusPoint {
  int? id;
  String? image;
  String? focusPointName;
  String? projectName;
  int? projectId;
  String? focusPointLookUp;
  String? freelanceType;
  String? focusPointType;
  String? addedDate;
  String? statusName;
  List<ShiftFocusPoint>? shifts;

  FocusPoint(
      {this.id,
      this.projectId,
      this.image,
      this.focusPointName,
      this.projectName,
      this.focusPointLookUp,
      this.freelanceType,
      this.focusPointType,
      this.addedDate,
      this.statusName,
      this.shifts,
      });

  factory FocusPoint.fromDto(FocusPointDto json) {
    return FocusPoint(
      id: json.id,
      image: json.image,
      focusPointName: json.focusPointName,
      projectName: json.projectName,
      focusPointLookUp: json.focusPointLookUp,
      freelanceType: json.freelanceType,
      focusPointType: json.focusPointType,
      addedDate: json.addedDate,
      statusName: json.statusName,
      projectId: json.projectId,
      shifts: json.shifts?.map((e) => ShiftFocusPoint.fromDto(e)).toList() ?? [],
    );
  }
}
