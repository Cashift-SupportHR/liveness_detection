import '../../data/models/employment_management_tab_dto.dart';

class EmploymentManagementTab {
  int? id;
  String? name;
  int? totalFreelance;
  List<SuccessApprovedLevel>? successApprovedLevel;

  EmploymentManagementTab({this.id, this.name, this.totalFreelance, this.successApprovedLevel});

   factory EmploymentManagementTab.fromDto(EmploymentManagementTabDto json) {
    return EmploymentManagementTab(
      id: json.id,
      name: json.name,
      totalFreelance: json.totalFreelance,
      successApprovedLevel: json.successApprovedLevel,
    );
   }
}

