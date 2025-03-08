import '../../data/models/shift_rquest_type_dto.dart';

class ShiftRquestType {
  ShiftRquestType({
    this.id,
    this.name,
    this.code,
  });

  int? id;
  String? name;
  String? code;

  factory ShiftRquestType.fromDto(ShiftRquestTypeDto json) {
    return ShiftRquestType(
      id: json.id,
      name: json.name,
      code: json.code,
    );
  }
}
