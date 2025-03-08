
import '../../../data/models/bail_requests/bail_term_and_condition_dto.dart';

class BailTermAndCondition {
  int? id;
  String? conditionName;
  int? statusId;

  BailTermAndCondition({
    this.id,
    this.conditionName,
    this.statusId,
  });

  factory BailTermAndCondition.fromDto(BailTermAndConditionDto json) {
    return BailTermAndCondition(
      id: json.id,
      conditionName: json.conditionName,
      statusId: json.statusId,
    );
  }


}
