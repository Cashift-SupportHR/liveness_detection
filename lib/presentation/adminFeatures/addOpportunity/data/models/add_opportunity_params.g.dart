// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_opportunity_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOpportunityParams _$AddOpportunityParamsFromJson(
        Map<String, dynamic> json) =>
    AddOpportunityParams(
      id: json['id'] as int?,
      description: json['description'] as String?,
      contractConditionsId: json['contractConditionsId'] as int?,
      jobId: json['jobId'] as int?,
      workingData: json['workingData'],
      requiredCount: json['requiredCount'] as int?,
      autoApprove: json['autoApprove'] as bool?,
      shiftId: json['shiftId'] as int?,
      reserveNumber: json['reserveNumber'] as int?,
      startAllowMinutes: json['startAllowMinutes'] as int?,
      endAllowMinutes: json['endAllowMinutes'] as int?,
      isAllowEditTime: json['isAllowEditTime'] as bool?,
      calcOppId: json['calcOppId'] as int?,
      startShiftTime: json['startShiftTime'] as String?,
      hoursCount: json['hoursCount'] as int?,
      isAllowEditPrice: json['isAllowEditPrice'] as bool?,
      salary: (json['salary'] as num?)?.toDouble(),
      isAcceptAllEmployeeByApprovalLevel:
          json['isAcceptAllEmployeeByApprovalLevel'] as int?,
      completeFreeLanceInfoByCompanyAprovelLevelId:
          json['completeFreeLanceInfoByCompanyAprovelLevelId'] as int?,
      attendanceTypeId: json['attendanceTypeId'] as int?,
      freeLancerIds: (json['freeLancerIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$AddOpportunityParamsToJson(
        AddOpportunityParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'contractConditionsId': instance.contractConditionsId,
      'jobId': instance.jobId,
      'workingData': instance.workingData,
      'requiredCount': instance.requiredCount,
      'autoApprove': instance.autoApprove,
      'shiftId': instance.shiftId,
      'reserveNumber': instance.reserveNumber,
      'startAllowMinutes': instance.startAllowMinutes,
      'endAllowMinutes': instance.endAllowMinutes,
      'isAllowEditTime': instance.isAllowEditTime,
      'calcOppId': instance.calcOppId,
      'startShiftTime': instance.startShiftTime,
      'hoursCount': instance.hoursCount,
      'isAllowEditPrice': instance.isAllowEditPrice,
      'salary': instance.salary,
      'isAcceptAllEmployeeByApprovalLevel':
          instance.isAcceptAllEmployeeByApprovalLevel,
      'completeFreeLanceInfoByCompanyAprovelLevelId':
          instance.completeFreeLanceInfoByCompanyAprovelLevelId,
      'attendanceTypeId': instance.attendanceTypeId,
      'freeLancerIds': instance.freeLancerIds,
    };
