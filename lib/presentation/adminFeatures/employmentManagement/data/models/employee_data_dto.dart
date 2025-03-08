import 'package:json_annotation/json_annotation.dart'; 

part 'employee_data_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class EmployeeChashifterDataDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'freelanceId')
  int? freelanceId;
  @JsonKey(name: 'idNumber')
  String? idNumber;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'logo')
  String? logo;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'qualificationDataName')
  String? qualificationDataName;
  @JsonKey(name: 'favourateJob')
  String? favourateJob;
  @JsonKey(name: 'age')
  String? age;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'national')
  String? national;
  @JsonKey(name: 'length')
  String? length;
  @JsonKey(name: 'wieght')
  String? wieght;

  EmployeeChashifterDataDto({this.id, this.freelanceId, this.idNumber, this.name, this.logo, this.phone, this.email, this.qualificationDataName, this.favourateJob, this.age, this.cityName, this.national, this.length, this.wieght});

   factory EmployeeChashifterDataDto.fromJson(Map<String, dynamic> json) => _$EmployeeChashifterDataDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeChashifterDataDtoToJson(this);
}

