// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationOfferDto _$NotificationOfferDtoFromJson(
        Map<String, dynamic> json) =>
    NotificationOfferDto(
      id: json['id'] as int?,
      companyId: json['companyId'] as int?,
      jobId: json['jobId'] as int?,
      cityId: json['cityId'] as int?,
      startTime: json['strartTime'] as String?,
      opportunitiesStartTime: json['opportunitiesStrartTime'] as String?,
      opportunitiesEndTime: json['opportunitiesEndTime'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longtude'] as num?)?.toDouble(),
      jobName: json['jobName'] as String?,
      salary: (json['salary'] as num?)?.toDouble(),
      hourSalary: json['hourSalary'] as int?,
      workingDate: json['workingDate'] as String?,
      workingDateTime: json['workingDateTime'] as String?,
      endWorkingDateTime: json['endWorkingDateTime'] as String?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      projectAddress: json['projectAddress'] as String?,
      jobRequirements: json['jobRequirements'] == null
          ? null
          : JobRequirements.fromJson(
              json['jobRequirements'] as Map<String, dynamic>),
      radius: json['radius'] as String?,
      qualificationName: json['qualificationName'] as String?,
      flagType: json['flagType'] as int?,
      description: json['description'] as String?,
      isFingerPrint: json['isFingerPrint'] as String?,
      totalRequiredCount: json['totalRequiredCount'] as int?,
      requiredCount: json['requiredCount'] as int?,
      reserveNumber: json['reserveNumber'] as int?,
      isApprove: json['isApprove'] as bool?,
      countOfApply: json['countOfApply'] as int?,
      pathLogo: json['pathLogo'] as String?,
      actualNumber: json['actualNumber'] as int?,
      endShiftDate: json['endShiftDate'] as String?,
      avg: (json['avg'] as num?)?.toDouble(),
      projectLogo: json['projectLogo'] as String?,
      jobLogo: json['jobLogo'] as String?,
      isShowBackGroundOpportunity: json['isShowBackGroundOpportunty'] as bool?,
      listPayment: (json['listPayment'] as List<dynamic>?)
          ?.map((e) => ListPayment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationOfferDtoToJson(
        NotificationOfferDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'jobId': instance.jobId,
      'cityId': instance.cityId,
      'strartTime': instance.startTime,
      'opportunitiesStrartTime': instance.opportunitiesStartTime,
      'opportunitiesEndTime': instance.opportunitiesEndTime,
      'latitude': instance.latitude,
      'longtude': instance.longitude,
      'jobName': instance.jobName,
      'salary': instance.salary,
      'hourSalary': instance.hourSalary,
      'workingDate': instance.workingDate,
      'workingDateTime': instance.workingDateTime,
      'endWorkingDateTime': instance.endWorkingDateTime,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'projectAddress': instance.projectAddress,
      'jobRequirements': instance.jobRequirements,
      'radius': instance.radius,
      'qualificationName': instance.qualificationName,
      'flagType': instance.flagType,
      'description': instance.description,
      'isFingerPrint': instance.isFingerPrint,
      'totalRequiredCount': instance.totalRequiredCount,
      'requiredCount': instance.requiredCount,
      'reserveNumber': instance.reserveNumber,
      'isApprove': instance.isApprove,
      'countOfApply': instance.countOfApply,
      'pathLogo': instance.pathLogo,
      'actualNumber': instance.actualNumber,
      'endShiftDate': instance.endShiftDate,
      'avg': instance.avg,
      'projectLogo': instance.projectLogo,
      'jobLogo': instance.jobLogo,
      'isShowBackGroundOpportunty': instance.isShowBackGroundOpportunity,
      'listPayment': instance.listPayment,
    };
