import 'package:json_annotation/json_annotation.dart';

part 'info_user_manager_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class InfoUserManagerDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'userName')
  String? userName;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'confirmPassword')
  String? confirmPassword;
  @JsonKey(name: 'roleName')
  String? roleName;
  @JsonKey(name: 'roleNameInfo')
  String? roleNameInfo;
  @JsonKey(name: 'companyNameInfo')
  String? companyNameInfo;
  @JsonKey(name: 'projectNameInfo')
  String? projectNameInfo;
  @JsonKey(name: 'shiftNameInfo')
  String? shiftNameInfo;
  @JsonKey(name: 'brandNameInfo')
  String? brandNameInfo;
  @JsonKey(name: 'areaNameInfo')
  String? areaNameInfo;

  @JsonKey(name: 'namePlaceHolder')
  String? namePlaceHolder;
  @JsonKey(name: 'userNamePlaceHolder')
  String? userNamePlaceHolder;
  @JsonKey(name: 'phonePlaceHolder')
  String? phonePlaceHolder;
  @JsonKey(name: 'passwordPlaceHolder')
  String? passwordPlaceHolder;
  @JsonKey(name: 'confirmPasswordPlaceHolder')
  String? confirmPasswordPlaceHolder;
  @JsonKey(name: 'roleNamePlaceHolder')
  String? roleNamePlaceHolder;
  @JsonKey(name: 'roleNameInfoPlaceHolder')
  String? roleNameInfoPlaceHolder;
  @JsonKey(name: 'companyNameInfoPlaceHolder')
  String? companyNameInfoPlaceHolder;
  @JsonKey(name: 'projectNameInfoPlaceHolder')
  String? projectNameInfoPlaceHolder;
  @JsonKey(name: 'shiftNameInfoPlaceHolder')
  String? shiftNameInfoPlaceHolder;
  @JsonKey(name: 'brandNameInfoPlaceHolder')
  String? areaNameInfoPlaceHolder;
  @JsonKey(name: 'areaNameInfoPlaceHolder')

  String? brandNameInfoPlaceHolder;
  @JsonKey(name: 'roles')
  List<RoleDto>? roles;

  InfoUserManagerDto(
      {this.name,
      this.userName,
      this.phone,
      this.password,
      this.confirmPassword,
      this.roleName,
      this.roleNameInfo,
      this.companyNameInfo,
      this.projectNameInfo,
      this.shiftNameInfo,
      this.brandNameInfo,
      this.areaNameInfo,
      this.roles,
      this.namePlaceHolder,
      this.userNamePlaceHolder,
      this.phonePlaceHolder,
      this.passwordPlaceHolder,
      this.confirmPasswordPlaceHolder,
      this.roleNamePlaceHolder,
      this.roleNameInfoPlaceHolder,
      this.companyNameInfoPlaceHolder,
      this.projectNameInfoPlaceHolder,
      this.shiftNameInfoPlaceHolder,
      this.brandNameInfoPlaceHolder,
      this.areaNameInfoPlaceHolder});

  factory InfoUserManagerDto.fromJson(Map<String, dynamic> json) =>
      _$InfoUserManagerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoUserManagerDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class RoleDto {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'level')
  int? level;
  @JsonKey(name: 'isProject')
  bool? isProject;
  @JsonKey(name: 'isCompany')
  bool? isCompany;
  @JsonKey(name: 'isShift')
  bool? isShift;
  @JsonKey(name: 'isBrand')
  bool? isBrand;
  @JsonKey(name: 'isArea')
  bool? isArea;
  @JsonKey(name: 'isMultiProject')
  bool? isMultiProject;
  @JsonKey(name: 'isMultiShift')
  bool? isMultiShift;

  RoleDto(
      {this.id,
      this.name,
      this.description,
      this.level,
      this.isProject,
      this.isCompany,
      this.isShift,
      this.isBrand,
      this.isArea,
      this.isMultiProject,
      this.isMultiShift,
      });

  factory RoleDto.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RoleDtoToJson(this);
}
