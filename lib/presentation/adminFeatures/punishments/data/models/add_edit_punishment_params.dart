import 'package:json_annotation/json_annotation.dart'; 

part 'add_edit_punishment_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class AddEditPunishmentParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'violationTypeId')
  int? violationTypeId;
  @JsonKey(name: 'violationTypeName')
  String? violationTypeName;
  @JsonKey(name: 'typesOfViolation')
  int? typesOfViolation;
  @JsonKey(name: 'typesOfViolationName')
  String? typesOfViolationName;
  @JsonKey(name: 'amountViolation')
  double? amountViolation;
  @JsonKey(name: 'totalViolationDays')
  int? totalViolationDays;

  AddEditPunishmentParams({this.id, this.violationTypeId, this.violationTypeName, this.typesOfViolation, this.typesOfViolationName, this.amountViolation, this.totalViolationDays});

   factory AddEditPunishmentParams.fromJson(Map<String, dynamic> json) => _$AddEditPunishmentParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddEditPunishmentParamsToJson(this);
}

