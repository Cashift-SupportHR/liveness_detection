import 'package:json_annotation/json_annotation.dart'; 

part 'employment_official_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class EmploymentOfficialDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'cityId')
  int? cityId;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'timesOfWork')
  String? timesOfWork;
  @JsonKey(name: 'workDays')
  String? workDays;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'isDeleted')
  bool? isDeleted;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'descriptionAr')
  String? descriptionAr;
  @JsonKey(name: 'descriptionEn')
  String? descriptionEn;
  @JsonKey(name: 'email')
  String? email;

  EmploymentOfficialDto({this.id, this.cityName, this.name, this.phone, this.address, this.timesOfWork, this.workDays, this.description, this.isDeleted, this.latitude, this.longtude, this.descriptionAr, this.descriptionEn, this.email, this.cityId});

   factory EmploymentOfficialDto.fromJson(Map<String, dynamic> json) => _$EmploymentOfficialDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmploymentOfficialDtoToJson(this);
}

