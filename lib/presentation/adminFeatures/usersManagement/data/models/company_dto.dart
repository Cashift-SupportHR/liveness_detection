import 'package:json_annotation/json_annotation.dart'; 

part 'company_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class CompanyDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyName')
  String? companyName;

  CompanyDto({this.id, this.companyName});

   factory CompanyDto.fromJson(Map<String, dynamic> json) => _$CompanyDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CompanyDtoToJson(this);
}

