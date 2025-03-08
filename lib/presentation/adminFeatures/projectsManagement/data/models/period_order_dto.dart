import 'package:json_annotation/json_annotation.dart'; 

part 'period_order_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class PeriodOrderDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  PeriodOrderDto({this.id, this.name});

   factory PeriodOrderDto.fromJson(Map<String, dynamic> json) => _$PeriodOrderDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PeriodOrderDtoToJson(this);
}

