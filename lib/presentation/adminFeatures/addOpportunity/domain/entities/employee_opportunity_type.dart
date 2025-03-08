import 'package:json_annotation/json_annotation.dart';

import '../../data/models/employee_opportunity_type_dto.dart';
import 'arrival_departure_type.dart';

class EmployeeOpportunityType {
  int? id;
  String? name;
  String? description;
  String? code;
  String? icon;

  EmployeeOpportunityType({this.id, this.name, this.description, this.code, this.icon});

   factory EmployeeOpportunityType.fromDto(EmployeeOpportunityTypeDto json) {
    return EmployeeOpportunityType(
      id: json.id,
      name: json.name,
      description: json.description,
      code: json.code,
      icon: json.icon,
    );
   }


  factory EmployeeOpportunityType.fromArrivalDepartureType(ArrivalDepartureType json) {
    return EmployeeOpportunityType(
      id: json.id,
      name: json.name,
      description: json.description,
      code: json.code,
      icon: json.icon,
    );
  }
}

