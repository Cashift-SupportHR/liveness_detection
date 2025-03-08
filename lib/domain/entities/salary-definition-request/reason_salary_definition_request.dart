import '../../../data/models/salary-definition-request/reason_salary_definition_request_dto.dart';

class ReasonSalaryDefinitionRequest {
  String id;
  String name;
  ReasonSalaryDefinitionRequest({
      required this.id,
      required this.name,});

  factory ReasonSalaryDefinitionRequest.fromJson(ReasonSalaryDefinitionRequestDto json) {
    return ReasonSalaryDefinitionRequest(
      id: json.id!,
      name: json.name!,
    );
  }

}