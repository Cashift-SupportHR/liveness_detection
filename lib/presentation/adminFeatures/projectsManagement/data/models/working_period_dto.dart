import 'package:json_annotation/json_annotation.dart'; 

part 'working_period_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class WorkingPeriodDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'startTime')
  String? startTime;

  WorkingPeriodDto({this.id, this.name, this.startTime});

   factory WorkingPeriodDto.fromJson(Map<String, dynamic> json) => _$WorkingPeriodDtoFromJson(json);

   Map<String, dynamic> toJson() => _$WorkingPeriodDtoToJson(this);
}

