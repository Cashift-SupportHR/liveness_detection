import 'package:json_annotation/json_annotation.dart';

part 'order_status_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class OrderStatusDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'isShowFreeLanceAcceptedType')
  bool? isShowFreeLanceAcceptedType;
  @JsonKey(name: 'isShowProjects')
  bool? isShowProjects;
  @JsonKey(name: 'isShowShifts')
  bool? isShowShifts;
  @JsonKey(name: 'isShowDescription')
  bool? isShowDescription;

  OrderStatusDto({this.id, this.name, this.isShowFreeLanceAcceptedType, this.isShowProjects, this.isShowShifts, this.isShowDescription});

   factory OrderStatusDto.fromJson(Map<String, dynamic> json) => _$OrderStatusDtoFromJson(json);

   Map<String, dynamic> toJson() => _$OrderStatusDtoToJson(this);
}

