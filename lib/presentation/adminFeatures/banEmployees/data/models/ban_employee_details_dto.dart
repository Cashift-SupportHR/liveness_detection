import 'package:json_annotation/json_annotation.dart'; 

part 'ban_employee_details_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class BanEmployeeDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'logo')
  String? logo;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'idNumber')
  String? idNumber;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'birthDate')
  String? birthDate;
  @JsonKey(name: 'age')
  String? age;
  @JsonKey(name: 'computerLevel')
  String? computerLevel;
  @JsonKey(name: 'currentSituation')
  String? currentSituation;
  @JsonKey(name: 'englishLevel')
  String? englishLevel;
  @JsonKey(name: 'educationLevel')
  String? educationLevel;
  @JsonKey(name: 'favourateJob')
  String? favourateJob;
  @JsonKey(name: 'freelanceApply')
  List<StatisticsBanEmployee>? freelanceApply;
  @JsonKey(name: 'numOpportunities')
  int? numPreviousOpportunities;

  BanEmployeeDetailsDto({this.id, this.name, this.logo, this.email, this.idNumber, this.city, this.gender, this.birthDate, this.age, this.computerLevel, this.currentSituation, this.englishLevel, this.educationLevel, this.favourateJob, this.freelanceApply, this.numPreviousOpportunities});

   factory BanEmployeeDetailsDto.fromJson(Map<String, dynamic> json) => _$BanEmployeeDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$BanEmployeeDetailsDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class StatisticsBanEmployee {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'percentage')
  double? percentage;
  @JsonKey(name: 'count')
  int? count;
  @JsonKey(name: 'label')
  String? label;

  StatisticsBanEmployee({this.name, this.percentage, this.count, this.label});

   factory StatisticsBanEmployee.fromJson(Map<String, dynamic> json) => _$StatisticsBanEmployeeFromJson(json);

   Map<String, dynamic> toJson() => _$StatisticsBanEmployeeToJson(this);
}

