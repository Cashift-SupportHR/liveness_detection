import 'package:json_annotation/json_annotation.dart';

part 'project_management_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ProjectManagementDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectCode')
  String? projectCode;
  @JsonKey(name: 'nameEn')
  String? nameEn;
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'addressName')
  String? addressName;
  @JsonKey(name: 'typeAttendance')
  String? typeAttendance;

  ProjectManagementDto({this.id, this.projectCode, this.companyId, this.nameEn, this.nameAr, this.cityName, this.addressName, this.typeAttendance});

  factory ProjectManagementDto.fromJson(Map<String, dynamic> json) => _$ProjectManagementDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectManagementDtoToJson(this);
}
