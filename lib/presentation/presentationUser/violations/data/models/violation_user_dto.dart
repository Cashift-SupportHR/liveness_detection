import 'package:json_annotation/json_annotation.dart';

part 'violation_user_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ViolationUserDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'violationName')
  String? violationName;
  @JsonKey(name: 'typesOfViolationName')
  String? typesOfViolationName;
  @JsonKey(name: 'adminDescription')
  String? adminDescription;
  @JsonKey(name: 'applyDescription')
  String? applyDescription;
  @JsonKey(name: 'actionButton')
  bool? actionButton;
  @JsonKey(name: 'opporunityName')
  String? opporunityName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'startShiftDate')
  String? startShiftDate;
  @JsonKey(name: 'endShiftDate')
  String? endShiftDate;
  @JsonKey(name: 'typeApprove')
  String? typeApprove;
  @JsonKey(name: 'amountViolation')
  double? amountViolation;
  @JsonKey(name: 'filePath')
  String? filePath;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'fromDate')
  String? fromDate;
  @JsonKey(name: 'toDate')
  String? toDate;

  ViolationUserDto(
      {this.id,
      this.fromDate,
      this.toDate,
      this.status,
      this.companyName,
      this.violationName,
      this.typesOfViolationName,
      this.adminDescription,
      this.applyDescription,
      this.actionButton,
      this.opporunityName,
      this.projectName,
      this.startShiftDate,
      this.endShiftDate,
      this.typeApprove,
      this.amountViolation,
      this.filePath});

  factory ViolationUserDto.fromJson(Map<String, dynamic> json) => _$ViolationUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ViolationUserDtoToJson(this);
}
