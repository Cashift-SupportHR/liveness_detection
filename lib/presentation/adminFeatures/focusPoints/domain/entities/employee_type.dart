

import '../../data/models/employee_type_dto.dart';

class EmployeeType {
  int? id;
  String? name;

  EmployeeType({this.id, this.name});

  factory EmployeeType.fromJson(EmployeeTypeDto json) {
    return EmployeeType(
      id: json.id,
      name: json.name,
    );
  }
}

