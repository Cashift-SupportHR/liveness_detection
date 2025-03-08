
import '../../data/models/shift_focus_point_dto.dart';

class ShiftFocusPoint{
  int? id;
  int? shiftId;
  String? shiftName;

  ShiftFocusPoint({this.id, this.shiftId, this.shiftName});

   factory ShiftFocusPoint.fromDto(ShiftFocusPointDto json) {
      return ShiftFocusPoint(
        id: json.id,
        shiftId: json.shiftId,
        shiftName: json.shiftName,
      );
   }

}

