import '../../data/models/calc_opportunity_dto.dart';

class CalcOpportunity {
  String? description;
  List<ListCalcOppDto>? listCalc;


  CalcOpportunity({
    required this.description,
    required Map<String , dynamic> jsonMap,
    required this.listCalc
  });

  factory CalcOpportunity.fromDto(CalcOpportunityDto dto) {
    return CalcOpportunity(
      description: dto.description,
      listCalc: dto.listCalc!.map((e) => ListCalcOppDto.fromJson(e.toJson())).toList(),
      jsonMap: dto.toJson(),
    );
  }

}