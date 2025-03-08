import 'employee_opportunity_type.dart';

class MethodSelectEmployee {
  EmployeeOpportunityType? employeeType;
  int? isAll;
  List<int>? employeesIds;
  bool? isSelectEmployee;

  MethodSelectEmployee({this.employeeType, this.isAll, this.employeesIds, this.isSelectEmployee});

  static String allEmployees = '2-2';
}