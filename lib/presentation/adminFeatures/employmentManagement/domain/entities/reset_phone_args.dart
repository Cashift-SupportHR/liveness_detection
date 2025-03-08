import 'package:shiftapp/presentation/adminFeatures/employmentManagement/domain/entities/popup_employment_management.dart';

import 'employee_data.dart';

class ResetPhoneArgs{
  final EmployeeData employee;
  final PopupEmploymentManagement popups;

  ResetPhoneArgs({required this.employee, required this.popups});
}