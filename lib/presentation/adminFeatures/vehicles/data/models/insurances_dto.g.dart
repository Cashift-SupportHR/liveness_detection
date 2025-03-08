// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurances_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsurancesDto _$InsurancesDtoFromJson(Map<String, dynamic> json) =>
    InsurancesDto(
      id: json['id'] as int?,
      insuranceImagePath: json['insuranceImagePath'] as String?,
      vehicleInsuranceTypeName: json['vehicleInsuranceTypeName'] as String?,
      insuranceNumber: json['insuranceNumber'] as String?,
      insuranceProvider: json['insuranceProvider'] as String?,
      insuranceExpiryDate: json['insuranceExpiryDate'] as String?,
      insuranceImage: json['insuranceImage'] as String?,
      vehicleId: json['vehicleId'] as int?,
      vehicleInsuranceTypeId: json['vehicleInsuranceTypeId'] as int?,
    );

Map<String, dynamic> _$InsurancesDtoToJson(InsurancesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'insuranceImagePath': instance.insuranceImagePath,
      'insuranceNumber': instance.insuranceNumber,
      'insuranceProvider': instance.insuranceProvider,
      'insuranceExpiryDate': instance.insuranceExpiryDate,
      'insuranceImage': instance.insuranceImage,
      'vehicleInsuranceTypeName': instance.vehicleInsuranceTypeName,
      'vehicleId': instance.vehicleId,
      'vehicleInsuranceTypeId': instance.vehicleInsuranceTypeId,
    };
