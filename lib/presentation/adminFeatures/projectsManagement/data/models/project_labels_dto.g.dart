// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_labels_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectLabelsDto _$ProjectLabelsDtoFromJson(Map<String, dynamic> json) =>
    ProjectLabelsDto(
      brand: json['brand'] as String?,
      cityName: json['cityName'] as String?,
      companyName: json['companyName'] as String?,
      hintCompanyName: json['hintCompanyName'] as String?,
      hintCityName: json['hintCityName'] as String?,
      nameEn: json['nameEn'] as String?,
      hintNameEn: json['hintNameEn'] as String?,
      nameAr: json['nameAr'] as String?,
      hintNameAr: json['hintNameAr'] as String?,
      addressProjectEn: json['addressProjectEn'] as String?,
      hintAddressProjectEn: json['hintAddressProjectEn'] as String?,
      addressProjectAr: json['addressProjectAr'] as String?,
      hintAddressProjectAr: json['hintAddressProjectAr'] as String?,
      chooseFinger: json['chooseFinger'] as String?,
      fingerMobile: json['fingerMobile'] as String?,
      fingerQR: json['fingerQR'] as String?,
      descriptionofQRCode: json['descriptionofQRCode'] as String?,
      descriptionofPhone: json['descriptionofPhone'] as String?,
    )..hintBrand = json['hintBrand'] as String?;

Map<String, dynamic> _$ProjectLabelsDtoToJson(ProjectLabelsDto instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'hintCompanyName': instance.hintCompanyName,
      'companyName': instance.companyName,
      'hintBrand': instance.hintBrand,
      'cityName': instance.cityName,
      'hintCityName': instance.hintCityName,
      'nameEn': instance.nameEn,
      'hintNameEn': instance.hintNameEn,
      'nameAr': instance.nameAr,
      'hintNameAr': instance.hintNameAr,
      'addressProjectEn': instance.addressProjectEn,
      'hintAddressProjectEn': instance.hintAddressProjectEn,
      'addressProjectAr': instance.addressProjectAr,
      'hintAddressProjectAr': instance.hintAddressProjectAr,
      'chooseFinger': instance.chooseFinger,
      'fingerMobile': instance.fingerMobile,
      'fingerQR': instance.fingerQR,
      'descriptionofQRCode': instance.descriptionofQRCode,
      'descriptionofPhone': instance.descriptionofPhone,
    };
