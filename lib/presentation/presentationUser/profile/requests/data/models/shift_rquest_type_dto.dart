import 'package:json_annotation/json_annotation.dart'; 

part 'shift_rquest_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ShiftRquestTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'code')
  String? code;

  ShiftRquestTypeDto({this.id, this.name, this.code});

   factory ShiftRquestTypeDto.fromJson(Map<String, dynamic> json) => _$ShiftRquestTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ShiftRquestTypeDtoToJson(this);
}

