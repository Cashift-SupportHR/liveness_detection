import 'package:json_annotation/json_annotation.dart'; 

part 'employee_opportunity_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class EmployeeOpportunityDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'isFavorite')
  bool? isFavorite;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'checked')
  bool? checked;

  EmployeeOpportunityDto({this.id, this.name, this.phoneNumber, this.cityName, this.isFavorite, this.icon, this.checked});

   factory EmployeeOpportunityDto.fromJson(Map<String, dynamic> json) => _$EmployeeOpportunityDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeOpportunityDtoToJson(this);
}

