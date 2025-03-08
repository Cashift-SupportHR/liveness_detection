import 'package:json_annotation/json_annotation.dart'; 


part 'calc_opportunity_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class CalcOpportunityDto {
  @JsonKey(name: 'listCalc')
  List<ListCalcOppDto>? listCalc;
  @JsonKey(name: 'description')
  String? description;

  CalcOpportunityDto({this.listCalc, this.description});

   factory CalcOpportunityDto.fromJson(Map<String, dynamic> json) => _$CalcOpportunityDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CalcOpportunityDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ListCalcOppDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'calcOppName')
  String? calcOppName;
  @JsonKey(name: 'description')
  String? description;

  ListCalcOppDto({this.id, this.calcOppName, this.description});

   factory ListCalcOppDto.fromJson(Map<String, dynamic> json) => _$ListCalcOppDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ListCalcOppDtoToJson(this);
}

