// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opportunity_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpportunityDataDto _$OpportunityDataDtoFromJson(Map<String, dynamic> json) =>
    OpportunityDataDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OpportunityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalData: json['totalData'] as int?,
      navItem: (json['navItem'] as List<dynamic>?)
          ?.map((e) => NavItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpportunityDataDtoToJson(OpportunityDataDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalData': instance.totalData,
      'navItem': instance.navItem,
    };

OpportunityDto _$OpportunityDtoFromJson(Map<String, dynamic> json) =>
    OpportunityDto(
      id: json['id'] as int?,
      freelanceApplyCounter: (json['freelanceApplyCounter'] as List<dynamic>?)
          ?.map((e) =>
              FreelanceApplyCounterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      logoPath: json['logoPath'] as String?,
      projectName: json['projectName'] as String?,
      qualification: json['qualification'] as String?,
      gender: json['gender'] as String?,
      contractId: json['contractId'] as int?,
      contractConditionsId: json['contractConditionsId'] as int?,
      contractConditionsName: json['contractConditionsName'] as String?,
      companyId: json['companyId'] as int?,
      companyName: json['companyName'] as String?,
      startShiftTime: json['startShiftTime'] as String?,
      hoursCount: json['hoursCount'] as int?,
      opportunitiesStrartTimeName:
          json['opportunitiesStrartTimeName'] as String?,
      opportunitiesEndTimeName: json['opportunitiesEndTimeName'] as String?,
      workingData: json['workingData'] as String?,
      requiredCount: json['requiredCount'] as int?,
      lastRequiredCount: json['lastRequiredCount'] as int?,
      workingDateString: json['workingDateString'] as String?,
      actualNumber: json['actualNumber'] as int?,
      isApprove: json['isApprove'] as bool?,
      autoApprove: json['autoApprove'] as bool?,
      latitude: json['latitude'] as String?,
      longtude: json['longtude'] as String?,
      shift: json['shift'] == null
          ? null
          : ListShiftDto.fromJson(json['shift'] as Map<String, dynamic>),
      shiftId: json['shiftId'] as int?,
      calcId: json['calcId'] as int?,
      startAllowMinutes: json['startAllowMinutes'] as int?,
      salary: (json['salary'] as num?)?.toDouble(),
      endAllowMinutes: json['endAllowMinutes'] as int?,
      isAllowEditPrice: json['isAllowEditPrice'] as bool?,
      isAllowEditTime: json['isAllowEditTime'] as bool?,
      userId: json['userId'] as int?,
      startShiftDate: json['startShiftDate'] as String?,
      workingDateTime: json['workingDateTime'] as String?,
      endWorkingDateTime: json['endWorkingDateTime'] as String?,
      endShiftDate: json['endShiftDate'] as String?,
      description: json['description'] as String?,
      reserveNumber: json['reserveNumber'] as int?,
      numberAccepted: json['numberAccepted'] as int?,
      projectId: json['projectId'] as int?,
      workingStartDate: json['workingStartDate'] as String?,
      workingEndDate: json['workingEndDate'] as String?,
      calcOpp: json['calcOpp'] == null
          ? null
          : ListCalcOppDto.fromJson(json['calcOpp'] as Map<String, dynamic>),
      address: json['address'] as String?,
      jobName: json['jobName'] as String?,
      jobId: json['jobId'] as int?,
      isAcceptAllEmployeeByApprovalLevel:
          json['isAcceptAllEmployeeByApprovalLevel'] as int?,
      completeFreeLanceInfoByCompanyAprovelLevelId:
          json['completeFreeLanceInfoByCompanyAprovelLevelId'] as int?,
      attendanceTypeId: json['attendanceTypeId'] as int?,
      freeLancerIds: (json['freeLancerIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$OpportunityDtoToJson(OpportunityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'qualification': instance.qualification,
      'gender': instance.gender,
      'contractId': instance.contractId,
      'contractConditionsId': instance.contractConditionsId,
      'contractConditionsName': instance.contractConditionsName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'startShiftTime': instance.startShiftTime,
      'hoursCount': instance.hoursCount,
      'opportunitiesStrartTimeName': instance.opportunitiesStrartTimeName,
      'opportunitiesEndTimeName': instance.opportunitiesEndTimeName,
      'workingData': instance.workingData,
      'requiredCount': instance.requiredCount,
      'lastRequiredCount': instance.lastRequiredCount,
      'workingDateString': instance.workingDateString,
      'actualNumber': instance.actualNumber,
      'isApprove': instance.isApprove,
      'autoApprove': instance.autoApprove,
      'latitude': instance.latitude,
      'longtude': instance.longtude,
      'shift': instance.shift,
      'shiftId': instance.shiftId,
      'calcId': instance.calcId,
      'startAllowMinutes': instance.startAllowMinutes,
      'salary': instance.salary,
      'endAllowMinutes': instance.endAllowMinutes,
      'isAllowEditPrice': instance.isAllowEditPrice,
      'isAllowEditTime': instance.isAllowEditTime,
      'userId': instance.userId,
      'startShiftDate': instance.startShiftDate,
      'workingDateTime': instance.workingDateTime,
      'endWorkingDateTime': instance.endWorkingDateTime,
      'endShiftDate': instance.endShiftDate,
      'description': instance.description,
      'reserveNumber': instance.reserveNumber,
      'numberAccepted': instance.numberAccepted,
      'projectId': instance.projectId,
      'workingStartDate': instance.workingStartDate,
      'workingEndDate': instance.workingEndDate,
      'calcOpp': instance.calcOpp,
      'address': instance.address,
      'jobName': instance.jobName,
      'projectName': instance.projectName,
      'jobId': instance.jobId,
      'freelanceApplyCounter': instance.freelanceApplyCounter,
      'isAcceptAllEmployeeByApprovalLevel':
          instance.isAcceptAllEmployeeByApprovalLevel,
      'completeFreeLanceInfoByCompanyAprovelLevelId':
          instance.completeFreeLanceInfoByCompanyAprovelLevelId,
      'attendanceTypeId': instance.attendanceTypeId,
      'freeLancerIds': instance.freeLancerIds,
    };

FreelanceApplyCounterDto _$FreelanceApplyCounterDtoFromJson(
        Map<String, dynamic> json) =>
    FreelanceApplyCounterDto(
      name: json['name'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FreelanceApplyCounterDtoToJson(
        FreelanceApplyCounterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
    };

NavItemDto _$NavItemDtoFromJson(Map<String, dynamic> json) => NavItemDto(
      categoryName: json['categoryName'] as String?,
      navCode: json['navCode'] as String?,
      navName: json['navName'] as String?,
    );

Map<String, dynamic> _$NavItemDtoToJson(NavItemDto instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'navName': instance.navName,
      'navCode': instance.navCode,
    };
