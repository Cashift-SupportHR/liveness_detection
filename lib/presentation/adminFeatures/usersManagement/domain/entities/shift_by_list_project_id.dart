import 'package:json_annotation/json_annotation.dart';

import '../../data/models/shift_by_list_project_id_dto.dart';


class ShiftByListProjectId {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  ShiftByListProjectId({this.id, this.name});

   factory ShiftByListProjectId.fromDto(ShiftByListProjectIdDto json) {
    return ShiftByListProjectId(
      id: json.id,
      name: json.name,
    );
   }
}

