import 'package:json_annotation/json_annotation.dart'; 

part 'insurance_types_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class InsuranceTypesDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  InsuranceTypesDto({this.id, this.name});

   factory InsuranceTypesDto.fromJson(Map<String, dynamic> json) => _$InsuranceTypesDtoFromJson(json);

   Map<String, dynamic> toJson() => _$InsuranceTypesDtoToJson(this);
}

