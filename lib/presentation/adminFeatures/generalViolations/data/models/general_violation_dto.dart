import 'package:json_annotation/json_annotation.dart';

import '../../../../presentationUser/workHazards/data/models/index.dart';

part 'general_violation_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class GeneralViolationDto {
  @JsonKey(name: 'employeeId')
  int? employeeId;
  @JsonKey(name: 'employeeName')
  String? employeeName;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'violationAmount')
  num? violationAmount;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'scheduleViolationId')
  int? scheduleViolationId;
  @JsonKey(name: 'scheduleViolationName')
  String? scheduleViolationName;
  @JsonKey(name: 'scheduleEmployeeWorkId')
  int? scheduleEmployeeWorkId;
  @JsonKey(name: 'scheduleViolationTransactionattachs')
  List<WorkHazardImageDto>? images;

  GeneralViolationDto(
      {this.employeeId,
      this.employeeName,
      this.phone,
      this.id,
      this.violationAmount,
      this.projectId,
      this.projectName,
      this.companyId,
      this.companyName,
      this.shiftId,
      this.shiftName,
      this.scheduleViolationId,
      this.scheduleViolationName,
      this.scheduleEmployeeWorkId,
      this.images,
      });

  factory GeneralViolationDto.fromJson(Map<String, dynamic> json) =>
      _$GeneralViolationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralViolationDtoToJson(this);
}
