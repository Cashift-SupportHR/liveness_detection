import 'package:json_annotation/json_annotation.dart'; 

part 'punishment_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class PunishmentDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'violationTypeName')
  String? violationTypeName;
  @JsonKey(name: 'typesOfViolationName')
  String? typesOfViolationName;
  @JsonKey(name: 'amountViolation')
  double? amountViolation;
  @JsonKey(name: 'totalViolationDays')
  int? totalViolationDays;
  @JsonKey(name: 'logo')
  String? logo;
  @JsonKey(name: 'typesOfViolation')
  int? typesOfViolation;

  PunishmentDto({this.id, this.companyName, this.violationTypeName, this.typesOfViolationName, this.amountViolation, this.totalViolationDays, this.logo, this.typesOfViolation});

   factory PunishmentDto.fromJson(Map<String, dynamic> json) => _$PunishmentDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PunishmentDtoToJson(this);
}

