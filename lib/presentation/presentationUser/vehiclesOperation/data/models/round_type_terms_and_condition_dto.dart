import 'package:json_annotation/json_annotation.dart'; 

part 'round_type_terms_and_condition_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RoundTypeTermsAndConditionDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'roundTypeId')
  int? roundTypeId;
  @JsonKey(name: 'roundTypeName')
  String? roundTypeName;

  RoundTypeTermsAndConditionDto({this.id, this.name, this.roundTypeId, this.roundTypeName});

   factory RoundTypeTermsAndConditionDto.fromJson(Map<String, dynamic> json) => _$RoundTypeTermsAndConditionDtoFromJson(json);

   Map<String, dynamic> toJson() => _$RoundTypeTermsAndConditionDtoToJson(this);
}

