import 'package:shiftapp/presentation/adminFeatures/shared/data/models/opportunity_data_dto.dart';

import '../../../../addOpportunity/data/models/calc_opportunity_dto.dart';
import '../../../../addOpportunity/data/models/shift_dto.dart';

class OpportunityData {
  List<Opportunity> opportunities;
  List<NavItem> navItem;
  int? totalData;

  OpportunityData({required this.opportunities, required this.navItem, required this.totalData});

  factory OpportunityData.fromDto(OpportunityDataDto dto) {
    return OpportunityData(
      opportunities: List<Opportunity>.from(dto.data!.map((x) => Opportunity.fromDto(x))),
      totalData: dto.totalData,
      navItem:  dto.navItem!.map((e) => NavItem.fromDto(e)).toList(),
    );
  }
}

class FreelanceApplyCounter {
  FreelanceApplyCounter({
    this.name,
    this.count,
  });

  String? name;
  int? count;

  factory FreelanceApplyCounter.fromDto(FreelanceApplyCounterDto dto) {
    return FreelanceApplyCounter(
      name: dto.name,
      count: dto.count,
    );
  }
}

class NavItem {
  NavItem({
    this.navName,
    this.navCode,
    this.categoryName,
  });

  String? navName;
  String? navCode;
  String? categoryName;


  factory NavItem.fromDto(NavItemDto dto) {
    return NavItem(
      navName: dto.navName,
      navCode: dto.navCode,
      categoryName: dto.categoryName,
    );
  }
}

class Opportunity {
  final int? id;
  final String? logoPath;
  final String? jobName;
  final String? qualification;
  final String? gender;
  final int? contractId;
  final int? contractConditionsId;
  final String? contractConditionsName;
  final int? companyId;
  final String? companyName;
  final String? startShiftTime;
  final int? hoursCount;
  final String? opportunitiesStartTimeName;
  final String? opportunitiesEndTimeName;
  final String? workingData;
  final int? requiredCount;
  final int? lastRequiredCount;
  final String? workingDateString;
  final int? actualNumber;
  final bool? isApprove;
  final String? latitude;
  final String? longtude;
  final num? salary;
  final String? startShiftDate;
  final String? workingDateTime;
  final String? endWorkingDateTime;
  final String? endShiftDate;
  final String? description;
  final int? reserveNumber;
  final int? numberAccepted;
  final String? workingStartDate;
  final String? workingEndDate;
  final String? address;
  final int? startAllowMinutes;
  final int? endAllowMinutes;
  final ListShiftDto? shift;
  final ListCalcOppDto? calcOpp;
  final bool? autoApprove;
  final int? projectId;
  final bool? isAllowEditPrice;
  final int? jobId;
  String? projectName;
  List<FreelanceApplyCounter>? freelanceApplyCounter;
  int? isAcceptAllEmployee;
  int? methodSelectEmployeeId;
  int? attendanceTypeId;
  List<int>? freeLancerIds;
  Map<String, dynamic>? _jsonObject;
  Opportunity({
    required this.id,
    required this.jobName,
    required this.projectName,
    required Map<String, dynamic> jsonMap,
    required this.logoPath,
    required this.freelanceApplyCounter,
    required this.qualification,
    required this.gender,
    required this.contractId,
    required this.contractConditionsId,
    required this.contractConditionsName,
    required this.companyId,
    required this.companyName,
    required this.startShiftTime,
    required this.hoursCount,
    required this.opportunitiesStartTimeName,
    required this.opportunitiesEndTimeName,
    required this.workingData,
    required this.requiredCount,
    required this.lastRequiredCount,
    required this.workingDateString,
    required this.actualNumber,
    required this.isApprove,
    required this.latitude,
    required this.longtude,
    required this.salary,
    required this.startShiftDate,
    required this.workingDateTime,
    required this.endWorkingDateTime,
    required this.endShiftDate,
    required this.description,
    required this.reserveNumber,
    required this.numberAccepted,
    required this.workingStartDate,
    required this.workingEndDate,
    required this.address,
    required this.startAllowMinutes,
    required this.endAllowMinutes,
    required this.shift,
    required this.calcOpp,
    required this.autoApprove,
    required this.projectId,
    required this.isAllowEditPrice,
    required this.jobId,
    required this.isAcceptAllEmployee,
    required this.methodSelectEmployeeId,
    required this.attendanceTypeId,
    required this.freeLancerIds,
  }) {
    _jsonObject = jsonMap;
  }

  bool isExpired() {
    return (actualNumber ?? 0) < 1;
  }

  factory Opportunity.fromDto(OpportunityDto dto) {
    return Opportunity(
      id: dto.id,
      projectName: dto.projectName,
      freelanceApplyCounter: dto.freelanceApplyCounter?.map((e) => FreelanceApplyCounter.fromDto(e)).toList(),
      description: dto.description,
      latitude: dto.latitude,
      actualNumber: dto.actualNumber,
      address: dto.address,
      companyId: dto.companyId,
      companyName: dto.companyName,
      contractConditionsId: dto.contractConditionsId,
      contractId: dto.contractId,
      contractConditionsName: dto.contractConditionsName,
      endShiftDate: dto.endShiftDate,
      endWorkingDateTime: dto.endWorkingDateTime,
      gender: dto.gender,
      hoursCount: dto.hoursCount,
      isApprove: dto.isApprove,
      lastRequiredCount: dto.lastRequiredCount,
      logoPath: dto.logoPath,
      longtude: dto.longtude,
      numberAccepted: dto.numberAccepted,
      opportunitiesEndTimeName: dto.opportunitiesEndTimeName,
      opportunitiesStartTimeName: dto.opportunitiesStrartTimeName,
      qualification: dto.qualification,
      requiredCount: dto.requiredCount,
      reserveNumber: dto.reserveNumber,
      salary: dto.salary,
      startShiftDate: dto.startShiftDate,
      startShiftTime: dto.startShiftTime,
      workingData: dto.workingData,
      workingDateString: dto.workingData,
      workingDateTime: dto.workingDateTime,
      workingEndDate: dto.workingEndDate,
      workingStartDate: dto.workingStartDate,
      jobName: dto.jobName,
      jsonMap: dto.toJson(),
      startAllowMinutes: dto.startAllowMinutes,
      endAllowMinutes: dto.endAllowMinutes,
      shift: ListShiftDto.fromJson(dto.shift?.toJson() ?? <String, dynamic>{}),
      calcOpp: ListCalcOppDto.fromJson(dto.calcOpp?.toJson() ?? <String, dynamic>{}),
      autoApprove: dto.autoApprove,
      projectId: dto.projectId,
      isAllowEditPrice: dto.isAllowEditPrice,
      jobId: dto.jobId,
      isAcceptAllEmployee: dto.isAcceptAllEmployeeByApprovalLevel,
      methodSelectEmployeeId: dto.completeFreeLanceInfoByCompanyAprovelLevelId,
      attendanceTypeId: dto.attendanceTypeId,
      freeLancerIds: dto.freeLancerIds,
    );
  }

  String getSearchableText() {
    return '$jobName , $companyName , $workingStartDate , $salary $address $qualification ';
  }
}
