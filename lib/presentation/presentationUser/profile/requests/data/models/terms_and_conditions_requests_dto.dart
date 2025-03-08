import 'package:json_annotation/json_annotation.dart'; 

part 'terms_and_conditions_requests_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TermsAndConditionsRequestsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  TermsAndConditionsRequestsDto({this.id, this.name});

   factory TermsAndConditionsRequestsDto.fromJson(Map<String, dynamic> json) => _$TermsAndConditionsRequestsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TermsAndConditionsRequestsDtoToJson(this);
}

