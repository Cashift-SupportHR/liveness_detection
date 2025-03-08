import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/usersManagement/data/models/shift_by_list_project_id_dto.dart';
import 'package:shiftapp/presentation/adminFeatures/usersManagement/data/models/user_area_dto.dart';

import '../../../../shared/models/common_list_item_dto.dart';
import '../../../focusPoints/data/models/focus_point_project_dto.dart';
import 'brand_dto.dart';

part 'user_management_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class UserManagementDto {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phonNumber')
  String? phoneNumber;
  @JsonKey(name: 'isActive')
  bool? isActive;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'level')
  int? level;
  @JsonKey(name: 'projects')
  List<CommonListItemDto>? projects;
  @JsonKey(name: 'brands')
  List<BrandDto>? brands;
  @JsonKey(name: 'shifts')
  List<ShiftByListProjectIdDto>? shifts;
  @JsonKey(name: 'role')
  UserManagementRoleDto? role;
  @JsonKey(name: 'areas')
  List<UserAreaDto>? areas;

  UserManagementDto({this.id, this.name, this.email, this.phoneNumber, this.isActive, this.projects, this.brands, this.shifts, this.companyId, this.level, this.role, this.areas, this.companyName});

   factory UserManagementDto.fromJson(Map<String, dynamic> json) => _$UserManagementDtoFromJson(json);

   Map<String, dynamic> toJson() => _$UserManagementDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class UserManagementRoleDto {
  @JsonKey(name: 'roleId')
  String? roleId;
  @JsonKey(name: 'roleName')
  String? roleName;

  UserManagementRoleDto({this.roleId, this.roleName});

  factory UserManagementRoleDto.fromJson(Map<String, dynamic> json) => _$UserManagementRoleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserManagementRoleDtoToJson(this);
}