import '../../data/models/contract_conditions_dto.dart';

class ContractConditions {
  final int? id;
  final String? conditionNumber;
  final int? maxHours;
  final int? lastHours;
  final bool? isAllowEditTime;
  final  int? startAllowMinutes;
  final int? endAllowMinutes;
  final int? companyId;
  final int? projectId;
  final int? jobId;
  final bool? allowEditDateOpp;

  ContractConditions({
    required this.id,
     this.conditionNumber,
     this.maxHours,
     this.lastHours,
     this.isAllowEditTime,
     this.startAllowMinutes,
     this.endAllowMinutes,
     this.companyId,
     this.projectId,
     this.jobId,
     this.allowEditDateOpp
  });

  factory ContractConditions.fromDto(ContractConditionsDto dto) {
    return ContractConditions(
      id: dto.id,
      conditionNumber: dto.conditionNumber,
      maxHours: dto.maxHours,
      lastHours: dto.lastHours,
      isAllowEditTime: dto.isAllowEditTime,
      startAllowMinutes: dto.startAllowMinutes,
      endAllowMinutes: dto.endAllowMinutes,
      companyId: dto.companyId,
      projectId: dto.projectId,
      jobId: dto.jobId,
      allowEditDateOpp: dto.allowEditDateOpp,
    );
  }

}