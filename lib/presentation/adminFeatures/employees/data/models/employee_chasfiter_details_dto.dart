import 'package:json_annotation/json_annotation.dart'; 

part 'employee_chasfiter_details_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmployeeChasfiterDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'idNumber')
  String? idNumber;
  @JsonKey(name: 'dateOfBirth')
  String? dateOfBirth;
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'age')
  int? age;
  @JsonKey(name: 'cityId')
  int? cityId;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'computerLevel')
  String? computerLevel;
  @JsonKey(name: 'englishLevel')
  String? englishLevel;
  @JsonKey(name: 'currentSituation')
  String? currentSituation;
  @JsonKey(name: 'qualificationName')
  String? qualificationName;
  @JsonKey(name: 'profileImagePath')
  String? profileImagePath;
  @JsonKey(name: 'favoriteJobs')
  List<String>? favoriteJobs;

  EmployeeChasfiterDetailsDto({this.id, this.name, this.email, this.phoneNumber, this.idNumber, this.dateOfBirth, this.gender, this.age, this.cityId, this.cityName, this.computerLevel, this.englishLevel, this.currentSituation, this.qualificationName, this.profileImagePath, this.favoriteJobs});

   factory EmployeeChasfiterDetailsDto.fromJson(Map<String, dynamic> json) => _$EmployeeChasfiterDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeChasfiterDetailsDtoToJson(this);
}

