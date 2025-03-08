import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_violation_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ContractViolationDto {
  @JsonKey(name: 'project')
  String? project;
  @JsonKey(name: 'company')
  String? company;
  @JsonKey(name: 'shift')
  String? shift;
  @JsonKey(name: 'contractViolationType')
  String? contractViolationType;
  @JsonKey(name: 'freeLanceName')
  String? freeLanceName;
  @JsonKey(name: 'freeLancePhone')
  String? freeLancePhone;
  @JsonKey(name: 'contractViolationAttachments')
  List<ContractViolationAttachment>? contractViolationAttachments;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lng')
  double? lng;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'contractViolationTypeId')
  int? contractViolationTypeId;
  @JsonKey(name: 'scheduleEmployeeWorkId')
  int? scheduleEmployeeWorkId;
  @JsonKey(name: 'freeLanceId')
  int? freeLanceId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'streetName')
  String? streetName;

  ContractViolationDto({this.project, this.company, this.shift, this.contractViolationType, this.freeLanceName, this.freeLancePhone, this.contractViolationAttachments, this.id, this.details, this.lat, this.lng, this.projectId, this.companyId, this.shiftId, this.contractViolationTypeId, this.scheduleEmployeeWorkId, this.freeLanceId, this.companyName, this.streetName});

   factory ContractViolationDto.fromJson(Map<String, dynamic> json) => _$ContractViolationDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ContractViolationDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ContractViolationAttachment {
  @JsonKey(name: 'path')
  String? path;

  ContractViolationAttachment({this.path});

   factory ContractViolationAttachment.fromJson(Map<String, dynamic> json) => _$ContractViolationAttachmentFromJson(json);

   Map<String, dynamic> toJson() => _$ContractViolationAttachmentToJson(this);
}

