
import '../../data/models/ban_employee_dto.dart';

class BanEmployee {
  int? id;
  String? freelanceLogo;
  String? freelanceNotes;
  int? freelanceId;
  String? freelanceName;
  int? projectId;
  int? companyId;
  String? projectName;
  String? description;
  int? evaluationPerCompany;
  int? totalEvaluationPerCompany;
  int? evaluationPerProject;
  int? totalEvaluationPerProject;

  BanEmployee({this.id, this.freelanceLogo, this.freelanceNotes, this.freelanceId, this.freelanceName, this.projectId, this.companyId, this.projectName, this.description, this.evaluationPerCompany, this.totalEvaluationPerCompany, this.evaluationPerProject, this.totalEvaluationPerProject});

   factory BanEmployee.fromDto(BanEmployeeDto json) {
      return BanEmployee(
        id: json.id,
        freelanceLogo: json.freelanceLogo,
        freelanceNotes: json.freelanceNotes,
        freelanceId: json.freelanceId,
        freelanceName: json.freelanceName,
        projectId: json.projectId,
        companyId: json.companyId,
        projectName: json.projectName,
        description: json.description,
        evaluationPerCompany: json.evaluationPerCompany,
        totalEvaluationPerCompany: json.totalEvaluationPerCompany,
        evaluationPerProject: json.evaluationPerProject,
        totalEvaluationPerProject: json.totalEvaluationPerProject,
      );
   }
}

