import 'package:json_annotation/json_annotation.dart'; 

part 'add_employment_official_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class AddEmploymentOfficialParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'cityId')
  int? cityId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'timesOfWork')
  String? timesOfWork;
  @JsonKey(name: 'workDays')
  String? workDays;
  @JsonKey(name: 'descriptionAr')
  String? descriptionAr;
  @JsonKey(name: 'descriptionEn')
  String? descriptionEn;
  @JsonKey(name: 'email')
  String? email;

  AddEmploymentOfficialParams({this.id, this.cityId, this.name, this.phone, this.address, this.latitude, this.longtude, this.timesOfWork, this.workDays, this.descriptionAr, this.descriptionEn, this.email});

   factory AddEmploymentOfficialParams.fromJson(Map<String, dynamic> json) => _$AddEmploymentOfficialParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddEmploymentOfficialParamsToJson(this);
}

