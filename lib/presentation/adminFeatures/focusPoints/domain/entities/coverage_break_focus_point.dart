
import '../../data/models/coverage_break_focus_point_dto.dart';

class CoverageBreakFocusPoint {
  int? id;
  String? name;

  CoverageBreakFocusPoint({this.id, this.name});

   factory CoverageBreakFocusPoint.fromDto(CoverageBreakFocusPointDto json) {
    return CoverageBreakFocusPoint(
      id: json.id,
      name: json.name,
    );
   }
}

