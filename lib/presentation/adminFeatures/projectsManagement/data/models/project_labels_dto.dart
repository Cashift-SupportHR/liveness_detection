import 'package:json_annotation/json_annotation.dart';

part 'project_labels_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ProjectLabelsDto {
  @JsonKey(name: 'brand')
  String? brand;
  @JsonKey(name: 'hintCompanyName')
  String? hintCompanyName;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'hintBrand')
  String? hintBrand;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'hintCityName')
  String? hintCityName;
  @JsonKey(name: 'nameEn')
  String? nameEn;
  @JsonKey(name: 'hintNameEn')
  String? hintNameEn;
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'hintNameAr')
  String? hintNameAr;
  @JsonKey(name: 'addressProjectEn')
  String? addressProjectEn;
  @JsonKey(name: 'hintAddressProjectEn')
  String? hintAddressProjectEn;
  @JsonKey(name: 'addressProjectAr')
  String? addressProjectAr;
  @JsonKey(name: 'hintAddressProjectAr')
  String? hintAddressProjectAr;
  @JsonKey(name: 'chooseFinger')
  String? chooseFinger;
  @JsonKey(name: 'fingerMobile')
  String? fingerMobile;
  @JsonKey(name: 'fingerQR')
  String? fingerQR;
  @JsonKey(name: 'descriptionofQRCode')
  String? descriptionofQRCode;
  @JsonKey(name: 'descriptionofPhone')
  String? descriptionofPhone;

  ProjectLabelsDto(
      {this.brand,
      this.cityName,
      this.companyName,
      this.hintCompanyName,
      this.hintCityName,
      this.nameEn,
      this.hintNameEn,
      this.nameAr,
      this.hintNameAr,
      this.addressProjectEn,
      this.hintAddressProjectEn,
      this.addressProjectAr,
      this.hintAddressProjectAr,
      this.chooseFinger,
      this.fingerMobile,
      this.fingerQR,
      this.descriptionofQRCode,
      this.descriptionofPhone});

  factory ProjectLabelsDto.fromJson(Map<String, dynamic> json) => _$ProjectLabelsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectLabelsDtoToJson(this);
}
