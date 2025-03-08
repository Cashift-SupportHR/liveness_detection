// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violation_employee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViolationEmployeeDto _$ViolationEmployeeDtoFromJson(
        Map<String, dynamic> json) =>
    ViolationEmployeeDto(
      id: json['id'] as int?,
      employeeId: json['employeeId'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      shiftId: json['shiftId'] as int?,
      shiftName: json['shiftName'] as String?,
    );

Map<String, dynamic> _$ViolationEmployeeDtoToJson(
        ViolationEmployeeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'name': instance.name,
      'phone': instance.phone,
      'shiftId': instance.shiftId,
      'shiftName': instance.shiftName,
    };
