import '../../data/models/insurance_types_dto.dart';

/// name : "id"

class InsuranceTypes {
  InsuranceTypes({
      this.name,
      this.id,

  });


  String? name;
  int? id;

  factory InsuranceTypes.fromDto(InsuranceTypesDto json) {
    return InsuranceTypes(
      name: json.name,
      id: json.id,

    );
  }


}