import '../../data/models/terms_and_conditions_requests_dto.dart';

class TermsAndConditionsRequests {
  TermsAndConditionsRequests({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory TermsAndConditionsRequests.fromDto(
      TermsAndConditionsRequestsDto json) {
    return TermsAndConditionsRequests(
      id: json.id,
      name: json.name,
    );
  }
}
