import 'package:json_annotation/json_annotation.dart'; 

part 'applicant_role_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ApplicantRoleDto {
  @JsonKey(name: 'roleIndex')
  int? roleIndex;
  @JsonKey(name: 'roleKey')
  String? roleKey;
  @JsonKey(name: 'roleName')
  String? roleName;

  ApplicantRoleDto({this.roleIndex, this.roleKey, this.roleName});

   factory ApplicantRoleDto.fromJson(Map<String, dynamic> json) => _$ApplicantRoleDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ApplicantRoleDtoToJson(this);
}

