// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_violation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralViolationDto _$GeneralViolationDtoFromJson(Map<String, dynamic> json) =>
    GeneralViolationDto(
      employeeId: json['employeeId'] as int?,
      employeeName: json['employeeName'] as String?,
      phone: json['phone'] as String?,
      id: json['id'] as int?,
      violationAmount: json['violationAmount'] as num?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      companyId: json['companyId'] as int?,
      companyName: json['companyName'] as String?,
      shiftId: json['shiftId'] as int?,
      shiftName: json['shiftName'] as String?,
      scheduleViolationId: json['scheduleViolationId'] as int?,
      scheduleViolationName: json['scheduleViolationName'] as String?,
      scheduleEmployeeWorkId: json['scheduleEmployeeWorkId'] as int?,
      images: (json['scheduleViolationTransactionattachs'] as List<dynamic>?)
          ?.map((e) => WorkHazardImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeneralViolationDtoToJson(
        GeneralViolationDto instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'employeeName': instance.employeeName,
      'phone': instance.phone,
      'id': instance.id,
      'violationAmount': instance.violationAmount,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'shiftId': instance.shiftId,
      'shiftName': instance.shiftName,
      'scheduleViolationId': instance.scheduleViolationId,
      'scheduleViolationName': instance.scheduleViolationName,
      'scheduleEmployeeWorkId': instance.scheduleEmployeeWorkId,
      'scheduleViolationTransactionattachs': instance.images,
    };
