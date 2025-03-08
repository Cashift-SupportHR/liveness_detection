
import '../../data/models/shift_by_project_id_dto.dart';

class ShiftByProjectId {
  int? id;
  String? shiftName;
  bool? isActive;

  ShiftByProjectId({this.id, this.shiftName, this.isActive});

   factory ShiftByProjectId.fromJson(ShiftByProjectIdDto json) {
      return ShiftByProjectId(
        id: json.id,
        shiftName: json.shiftName,
        isActive: json.isActive
      );
   }
}

