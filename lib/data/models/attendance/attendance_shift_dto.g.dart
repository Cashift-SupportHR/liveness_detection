// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_shift_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceShiftDto _$AttendanceShiftDtoFromJson(Map<String, dynamic> json) =>
    AttendanceShiftDto(
      crmEmpId: json['crmEmpId'] as String?,
      idNumber: json['idNumber'] as String?,
      projectName: json['projectName'] as String?,
      projectId: json['projectId'] as String?,
      jobName: json['jobName'] as String?,
      shiftFrom: json['shiftFrom'] as String?,
      shiftTo: json['shiftTo'] as String?,
      employeeChar: json['employeeChar'] as String?,
      cityName: json['cityName'] as String?,
      nameEmployee: json['nameEmployee'] as String?,
      canSkipQr: json['allowFingerPrint'] as bool?,
      startOverTime: json['isAttendance'] as bool?,
      id: json['id'] as int?,
      candidateId: json['candidateId'] as String?,
      toTimeHoure: json['toTimeHoure'] as int?,
      toTimeMinute: json['toTimeMinute'] as int?,
      fromTimeHoure: json['fromTimeHoure'] as int?,
      fromTimeMinute: json['fromTimeMinute'] as int?,
      employeeType: json['employeeType'] as String?,
      presentType: (json['presentType'] as List<dynamic>?)
          ?.map((e) => PresentType.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTimeDateTime: json['startTimeDateTime'] as String?,
      startShiftTimeHoure: json['startShiftTimeHoure'] as int?,
      endTimeDateTime: json['endTimeDateTime'] as String?,
      femailShiftHour: json['femailShiftHour'] as int?,
      fingerprintlocation: json['fingerprintlocation'] as String?,
      sex: json['sex'] as int?,
      femaleShiftFromMinuts: json['femaleShiftFromMinuts'] as int?,
      femaleShiftFromHour: json['femaleShiftFromHour'] as int?,
      fingerType: json['fingerType'] as int?,
      shiftId: json['shiftId'] as int?,
      isAutoAttendance: json['isAutoAttendance'] as bool?,
      allowFaceRecognition: json['allowFaceRecognition'] as bool?,
      attendanceConfigDto: json['attendanceConfig'] == null
          ? null
          : AttendanceConfigDto.fromJson(
              json['attendanceConfig'] as Map<String, dynamic>),
      isAllowToTrack: json['isAllowToTrack'] as bool?,
    );

Map<String, dynamic> _$AttendanceShiftDtoToJson(AttendanceShiftDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'crmEmpId': instance.crmEmpId,
      'idNumber': instance.idNumber,
      'projectName': instance.projectName,
      'projectId': instance.projectId,
      'jobName': instance.jobName,
      'shiftFrom': instance.shiftFrom,
      'shiftTo': instance.shiftTo,
      'employeeChar': instance.employeeChar,
      'nameEmployee': instance.nameEmployee,
      'cityName': instance.cityName,
      'allowFingerPrint': instance.canSkipQr,
      'isAttendance': instance.startOverTime,
      'candidateId': instance.candidateId,
      'toTimeHoure': instance.toTimeHoure,
      'toTimeMinute': instance.toTimeMinute,
      'fromTimeHoure': instance.fromTimeHoure,
      'fromTimeMinute': instance.fromTimeMinute,
      'employeeType': instance.employeeType,
      'presentType': instance.presentType,
      'startTimeDateTime': instance.startTimeDateTime,
      'startShiftTimeHoure': instance.startShiftTimeHoure,
      'endTimeDateTime': instance.endTimeDateTime,
      'femailShiftHour': instance.femailShiftHour,
      'fingerprintlocation': instance.fingerprintlocation,
      'sex': instance.sex,
      'femaleShiftFromMinuts': instance.femaleShiftFromMinuts,
      'femaleShiftFromHour': instance.femaleShiftFromHour,
      'fingerType': instance.fingerType,
      'shiftId': instance.shiftId,
      'isAutoAttendance': instance.isAutoAttendance,
      'allowFaceRecognition': instance.allowFaceRecognition,
      'attendanceConfig': instance.attendanceConfigDto,
      'isAllowToTrack': instance.isAllowToTrack,
    };
