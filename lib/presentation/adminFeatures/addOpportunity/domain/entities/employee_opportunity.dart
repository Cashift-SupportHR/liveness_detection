
import '../../data/models/employee_opportunity_dto.dart';

class EmployeeOpportunity {
  int? id;
  String? name;
  String? phoneNumber;
  String? cityName;
  bool? isFavorite;
  String? icon;
  bool? checked;

  EmployeeOpportunity({this.id, this.name, this.phoneNumber, this.cityName, this.isFavorite, this.icon, this.checked});

   factory EmployeeOpportunity.fromDto(EmployeeOpportunityDto json) {
    return EmployeeOpportunity(
      id: json.id,
      name: json.name,
      phoneNumber: json.phoneNumber,
      cityName: json.cityName,
      isFavorite: json.isFavorite,
      icon: json.icon,
      checked: json.checked,
    );
   }
}

