

import '../../../data/models/opportunity_details_dto.dart';

class OpportunityDetails {
  final int? id;
  final String? companyName;
  final String? companyLogo;
  final String? jobName;
  final int? workingHours;
  final String? startShiftDate;
  final String? endShiftDate;
  final int? requiredCount;
  final int? actualNumber;
  final double? salaries;
  final String? description;
  final String? projectName;
  final String? registerAttendance;
  final String? addedDate;
  final String? timeJob;
  final List<String>? conditions;
  final List<MenuEmployees>? menuEmployees;

  Map<String , dynamic> ?  _jsonObject ;
  OpportunityDetails(
      {required this.id,
     required this.companyName,
        required Map<String , dynamic> jsonMap,
        required this.companyLogo,
      required this.jobName,
      required this.workingHours,
      required this.startShiftDate,
      required this.endShiftDate,
      required this.requiredCount,
      required this.actualNumber,
      required this.salaries,
      required this.description,
      required this.projectName,
      required this.registerAttendance,
      required this.addedDate,
      required this.timeJob,
      required this.conditions,
      required this.menuEmployees
      }){
    _jsonObject = jsonMap;
  }

  bool isExpired() {
    return (actualNumber ?? 0) < 1;
  }

  factory OpportunityDetails.fromDto(OpportunityDetailsDto dto) {
    return OpportunityDetails(
        id: dto.id,
        description: dto.description,
        actualNumber: dto.actualNumber,
        companyName: dto.companyName,
        companyLogo: dto.companyLogo,
        endShiftDate: dto.endShiftDate,
        startShiftDate: dto.startShiftDate,
        jobName: dto.jobName,
        projectName: dto.projectName,
        registerAttendance: dto.registerAttendance,
        requiredCount: dto.requiredCount,
        salaries: dto.salaries,
        timeJob: dto.timeJob,
        workingHours: dto.workingHours,
        addedDate: dto.addedDate,
        conditions: dto.conditions,
        menuEmployees: dto.menuEmployees
            ?.map((e) => MenuEmployees.fromDto(e))
            .toList(),
        jsonMap: dto.toJson(),
    );
  }
}


class MenuEmployees{
  final int? id;
  final String? employeeName;
  final String? qualification;
  final String? cityName;
  final String? idNumber;
  final String? phoneNumber;
  final String? statusName;
  final int? status;

  Map<String , dynamic> ?  _jsonObject ;
  MenuEmployees(
      {required this.id,
        required Map<String , dynamic> jsonMap,
        required this.employeeName,
      required this.qualification,
      required this.cityName,
      required this.idNumber,
      required this.phoneNumber,
      required this.statusName,
      required this.status,
      }){
    _jsonObject = jsonMap;
  }

  factory MenuEmployees.fromDto(MenuEmployeesDto dto) {
    return MenuEmployees(
        id: dto.id,
        employeeName: dto.employeeName,
        qualification: dto.qualification,
        cityName: dto.cityName,
        idNumber: dto.idNumber,
        phoneNumber: dto.phoneNumber,
        statusName: dto.statusName,
        status: dto.status,
        jsonMap: dto.toJson(),
    );
  }
}