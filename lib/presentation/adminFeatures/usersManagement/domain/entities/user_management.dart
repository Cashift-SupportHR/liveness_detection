
import 'package:shiftapp/presentation/adminFeatures/usersManagement/domain/entities/shift_by_list_project_id.dart';
import 'package:shiftapp/presentation/adminFeatures/usersManagement/domain/entities/user_area.dart';

import '../../../../shared/models/common_list_item.dart';
import '../../../focusPoints/domain/entities/focus_point_project.dart';
import '../../../focusPoints/domain/entities/shifts_by_project.dart';
import '../../data/models/user_management_dto.dart';
import 'brand.dart';

class UserManagement {
  String? id;
  String? name;
  String? email;
  String? phoneNumber;
  bool? isActive;
  int? companyId;
  String? companyName;
  int? level;
  List<CommonListItem>? projects;
  List<Brand>? brands;
  List<ShiftsByProject>? shifts;
  List<UserArea>? areas;
  UserManagementRoleDto? role;


  UserManagement({this.id, this.name, this.email, this.phoneNumber, this.isActive, this.projects, this.brands, this.shifts, this.companyId, this.companyName, this.level, this.role, this.areas});

   factory UserManagement.fromDto(UserManagementDto json) {
     return UserManagement(
       id: json.id,
       name: json.name,
       email: json.email,
       phoneNumber: json.phoneNumber,
        companyName: json.companyName,
        companyId: json.companyId,
        level: json.level,
       isActive: json.isActive,
        projects: json.projects?.map((e) => CommonListItem.fromDto(e)).toList() ?? [],
        brands: json.brands?.map((e) => Brand.fromDto(e)).toList() ?? [],
        shifts: json.shifts?.map((e) => ShiftsByProject(id: e.id, shiftName: e.name)).toList() ?? [],
        areas: json.areas?.map((e) => UserArea.fromDto(e)).toList() ?? [],
        role: json.role,
     );
   }
}

