import 'package:json_annotation/json_annotation.dart'; 

part 'employee_certificate_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class EmployeeCertificateDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'titleHead')
  String? titleHead;
  @JsonKey(name: 'logoHead')
  String? logoHead;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'birthDate')
  String? birthDate;
  @JsonKey(name: 'logo')
  String? logo;
  @JsonKey(name: 'logoUser')
  String? logoUser;

  EmployeeCertificateDto({this.id, this.titleHead, this.logoHead, this.name, this.birthDate, this.logo, this.logoUser});

   factory EmployeeCertificateDto.fromJson(Map<String, dynamic> json) => _$EmployeeCertificateDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeCertificateDtoToJson(this);
}

