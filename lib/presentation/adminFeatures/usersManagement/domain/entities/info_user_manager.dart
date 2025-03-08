
import '../../data/models/info_user_manager_dto.dart';


class InfoUserManager {
  String? name;
  String? userName;
  String? phone;
  String? password;
  String? confirmPassword;
  String? roleName;
  String? roleNameInfo;
  String? companyNameInfo;
  String? projectNameInfo;
  String? shiftNameInfo;
  String? brandNameInfo;
  String? areaName;
  List<RoleDto>? roles;
  String? namePlaceHolder;
  String? userNamePlaceHolder;
  String? phonePlaceHolder;
  String? passwordPlaceHolder;
  String? confirmPasswordPlaceHolder;
  String? roleNamePlaceHolder;
  String? roleNameInfoPlaceHolder;
  String? companyNameInfoPlaceHolder;
  String? projectNameInfoPlaceHolder;
  String? shiftNameInfoPlaceHolder;
  String? brandNameInfoPlaceHolder;
  String? areaNamePlaceHolder;

  InfoUserManager({this.name, this.userName, this.phone, this.password, this.confirmPassword, this.roleName, this.roleNameInfo, this.companyNameInfo, this.projectNameInfo, this.shiftNameInfo, this.brandNameInfo, this.roles, this.namePlaceHolder, this.userNamePlaceHolder, this.phonePlaceHolder, this.passwordPlaceHolder, this.confirmPasswordPlaceHolder, this.roleNamePlaceHolder, this.roleNameInfoPlaceHolder, this.companyNameInfoPlaceHolder, this.projectNameInfoPlaceHolder, this.shiftNameInfoPlaceHolder, this.brandNameInfoPlaceHolder, this.areaName, this.areaNamePlaceHolder});

   factory InfoUserManager.fromDto(InfoUserManagerDto json){
     return InfoUserManager(
       name: json.name,
       userName: json.userName,
       phone: json.phone,
       password: json.password,
       confirmPassword: json.confirmPassword,
       roleName: json.roleName,
       roleNameInfo: json.roleNameInfo,
       companyNameInfo: json.companyNameInfo,
       projectNameInfo: json.projectNameInfo,
       shiftNameInfo: json.shiftNameInfo,
       brandNameInfo: json.brandNameInfo,
        areaName: json.areaNameInfo,
       roles: json.roles,
        namePlaceHolder: json.namePlaceHolder,
        userNamePlaceHolder: json.userNamePlaceHolder,
        phonePlaceHolder: json.phonePlaceHolder,
        passwordPlaceHolder: json.passwordPlaceHolder,
        confirmPasswordPlaceHolder: json.confirmPasswordPlaceHolder,
        roleNamePlaceHolder: json.roleNamePlaceHolder,
        roleNameInfoPlaceHolder: json.roleNameInfoPlaceHolder,
        companyNameInfoPlaceHolder: json.companyNameInfoPlaceHolder,
        projectNameInfoPlaceHolder: json.projectNameInfoPlaceHolder,
        shiftNameInfoPlaceHolder: json.shiftNameInfoPlaceHolder,
        brandNameInfoPlaceHolder: json.brandNameInfoPlaceHolder,
         areaNamePlaceHolder: json.areaNameInfoPlaceHolder,
     );
   }
}

