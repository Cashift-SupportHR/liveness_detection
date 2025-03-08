
import '../../data/models/project_info_focus_point_dto.dart';

class ProjectInfoFocusPoint {
  String? projectName;
  String? date;
  String? shiftName;
  String? startShift;
  String? endShift;

  ProjectInfoFocusPoint({this.projectName, this.date, this.shiftName, this.startShift, this.endShift});

   factory ProjectInfoFocusPoint.fromJson(ProjectInfoFocusPointDto json) {
    return ProjectInfoFocusPoint(
      projectName: json.projectName,
      date: json.date,
      shiftName: json.shiftName,
      startShift: json.startShift,
      endShift: json.endShift,
    );
   }
}

