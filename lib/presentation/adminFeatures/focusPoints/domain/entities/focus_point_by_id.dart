
import 'package:shiftapp/presentation/adminFeatures/focusPoints/domain/entities/shift_focus_point.dart';

import '../../data/models/focus_point_by_id_dto.dart';

class FocusPointById {
  int? id;
  int? projectId;
  String? projectName;
  int? focusPointsTypeId;
  String? focusPointsTypeName;
  String? focusPointsName;
  int? focusPointsPriorityId;
  String? focusPointsPriorityName;
  int? freelanceTypeId;
  String? freelanceTypeName;
  String? focusPointId;
  String? latitude;
  String? longtude;
  String? radius;
  int? focusPointsAreaId;
  String? focusPointsAreaName;
  int? coverageBreakId;
  String? coverageBreakName;
  int? focusPointsTransactionId;
  String? focusPointsTransactionName;
  List<ShiftFocusPoint>? listShifts;


  FocusPointById({this.id, this.projectId, this.projectName, this.focusPointsTypeId, this.focusPointsTypeName, this.focusPointsName, this.focusPointsPriorityId, this.focusPointsPriorityName, this.freelanceTypeId, this.freelanceTypeName, this.focusPointId, this.latitude, this.longtude, this.radius, this.focusPointsAreaId, this.focusPointsAreaName, this.focusPointsTransactionId, this.focusPointsTransactionName, this.listShifts,this.coverageBreakId,this.coverageBreakName});

  factory FocusPointById.fromDto(FocusPointByIdDto json) {
    return FocusPointById(
      id: json.id,
      projectId: json.projectId,
      projectName: json.projectName,
      focusPointsTypeId: json.focusPointsTypeId,
      focusPointsTypeName: json.focusPointsTypeName,
      focusPointsName: json.focusPointsName,
      focusPointsPriorityId: json.focusPointsPriorityId,
      focusPointsPriorityName: json.focusPointsPriorityName,
      freelanceTypeId: json.freelanceTypeId,
      freelanceTypeName: json.freelanceTypeName,
      focusPointId: json.focusPointId,
      latitude: json.latitude,
      longtude: json.longtude,
      radius: json.radius,
      focusPointsAreaId: json.focusPointsAreaId,
      focusPointsAreaName: json.focusPointsAreaName,
      focusPointsTransactionId: json.focusPointsTransactionId,
      focusPointsTransactionName: json.focusPointsTransactionName,
      coverageBreakId: json.coverageBreakId,
      coverageBreakName: json.coverageBreakName,
      listShifts: json.listShifts?.map((e) => ShiftFocusPoint.fromDto(e)).toList(),
    );
  }
}
