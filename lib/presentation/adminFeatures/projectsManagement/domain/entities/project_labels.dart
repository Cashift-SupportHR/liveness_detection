import '../../data/models/project_labels_dto.dart';

class ProjectLabels {
  String? brand;
  String? companyName;
  String? hintBrand;
  String? cityName;
  String? hintCityName;
  String? nameEn;
  String? hintNameEn;
  String? nameAr;
  String? hintNameAr;
  String? addressProjectEn;
  String? hintAddressProjectEn;
  String? addressProjectAr;
  String? hintAddressProjectAr;
  String? chooseFinger;
  String? fingerMobile;
  String? fingerQR;
  String? hintCompanyName;
  String? descriptionofQRCode;
  String? descriptionofPhone;

  ProjectLabels(
      {this.brand,
      this.companyName,
      this.hintBrand,
      this.hintCompanyName,
      this.cityName,
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

  factory ProjectLabels.fromDto(ProjectLabelsDto json) {
    return ProjectLabels(
      brand: json.brand,
      companyName: json.companyName,
      hintCompanyName: json.hintCompanyName,
      hintBrand: json.hintBrand,
      cityName: json.cityName,
      hintCityName: json.hintCityName,
      nameEn: json.nameEn,
      hintNameEn: json.hintNameEn,
      nameAr: json.nameAr,
      hintNameAr: json.hintNameAr,
      addressProjectEn: json.addressProjectEn,
      hintAddressProjectEn: json.hintAddressProjectEn,
      addressProjectAr: json.addressProjectAr,
      hintAddressProjectAr: json.hintAddressProjectAr,
      chooseFinger: json.chooseFinger,
      fingerMobile: json.fingerMobile,
      fingerQR: json.fingerQR,
      descriptionofQRCode: json.descriptionofQRCode,
      descriptionofPhone: json.descriptionofPhone,
    );
  }
}
