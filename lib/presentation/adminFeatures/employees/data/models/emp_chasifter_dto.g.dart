// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emp_chasifter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmpChasifterDto _$EmpChasifterDtoFromJson(Map<String, dynamic> json) =>
    EmpChasifterDto(
      id: json['id'] as int?,
      projectId: json['projectId'] as int?,
      licenseExpiryDate: json['licenseExpiryDate'] as String?,
      employeeStatusName: json['employeeStatusName'] as String?,
      employeeStatusCode: json['employeeStatusCode'] as String?,
      weight: json['weight'] as num?,
      freelancerInfoId: json['freelancerInfoId'] as int?,
      height: json['height'] as num?,
      bodyMass: json['bodyMass'] as num?,
      companyId: json['companyId'] as int?,
      shiftId: json['shiftId'] as int?,
      companyName: json['companyName'] as String?,
      weekDays:
          (json['weekDays'] as List<dynamic>?)?.map((e) => e as int).toList(),
      weekDaysName: (json['weekDaysName'] as List<dynamic>?)
          ?.map((e) => WeekDaysNameDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      opportunityValue: json['opportunityValue'] as num?,
      weekDaysString: json['weekDaysString'] as String?,
      paymentPeriodTypeId: json['paymentPeriodTypeId'] as int?,
      fromDay: json['fromDay'] as int?,
      toDay: json['toDay'] as int?,
      employeeStatusId: json['employeeStatusId'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      projectName: json['projectName'] as String?,
      shiftName: json['shiftName'] as String?,
      paymentPeriodTypeName: json['paymentPeriodTypeName'] as String?,
      paymentPeriodMonthly: json['paymentPeriodMonthly'] as String?,
      paymentPeriodTypeCode: json['paymentPeriodTypeCode'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$EmpChasifterDtoToJson(EmpChasifterDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'freelancerInfoId': instance.freelancerInfoId,
      'opportunityValue': instance.opportunityValue,
      'shiftId': instance.shiftId,
      'weekDays': instance.weekDays,
      'weekDaysName': instance.weekDaysName,
      'weekDaysString': instance.weekDaysString,
      'paymentPeriodTypeId': instance.paymentPeriodTypeId,
      'fromDay': instance.fromDay,
      'toDay': instance.toDay,
      'employeeStatusId': instance.employeeStatusId,
      'name': instance.name,
      'phone': instance.phone,
      'projectName': instance.projectName,
      'shiftName': instance.shiftName,
      'paymentPeriodTypeName': instance.paymentPeriodTypeName,
      'paymentPeriodMonthly': instance.paymentPeriodMonthly,
      'paymentPeriodTypeCode': instance.paymentPeriodTypeCode,
      'image': instance.image,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'licenseExpiryDate': instance.licenseExpiryDate,
      'employeeStatusName': instance.employeeStatusName,
      'employeeStatusCode': instance.employeeStatusCode,
      'bodyMass': instance.bodyMass,
      'weight': instance.weight,
      'height': instance.height,
    };

WeekDaysNameDto _$WeekDaysNameDtoFromJson(Map<String, dynamic> json) =>
    WeekDaysNameDto(
      dayValue: json['dayValue'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WeekDaysNameDtoToJson(WeekDaysNameDto instance) =>
    <String, dynamic>{
      'dayValue': instance.dayValue,
      'name': instance.name,
    };
