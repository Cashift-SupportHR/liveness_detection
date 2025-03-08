
import '../../../data/models/applicant_role_dto.dart';

class ApplicantRole {
  int? roleIndex;
  String? roleKey;
  String? roleName;

  ApplicantRole({this.roleIndex, this.roleKey, this.roleName});

  factory ApplicantRole.fromDto(ApplicantRoleDto json) {
    return ApplicantRole(
      roleIndex: json.roleIndex,
      roleKey: json.roleKey,
      roleName: json.roleName,
    );
  }

  static String freelanceDetails = 'cashifterdetails';
  static String editAttendance = 'editeshift';
  static String blockFreelance = 'blockcashifter';
}
