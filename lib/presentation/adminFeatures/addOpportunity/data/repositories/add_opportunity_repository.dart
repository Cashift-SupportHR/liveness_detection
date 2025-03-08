import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../projectsManagement/domain/entities/job.dart';
import '../../domain/entities/contract_conditions.dart';
import '../datasource/add_opp_api_provider.dart';
import '../models/index.dart';

@injectable
class AddOpportunityRepository {

  final AddOpportunityAPI _api;

  AddOpportunityRepository(this._api);

  Future<String> addOpportunity(AddOpportunityParams params) async {
    final data = await _api.addOpportunity(params);
    return data.payload!;
  }

  Future<String> editOpportunity(AddOpportunityParams params) async {
    final data = await _api.editOpportunity(params);
    return data.payload!;
  }

  Future<CalcOpportunityDto> fetchCalcOpp() async {
    final data = await _api.fetchCalcOpportunity();
    return data.payload!;
  }

  Future<ShiftDto> fetchListShift(FilterShiftParams params) async {
    final data = await _api.fetchListShift(params);
    return data.payload!;
  }

  Future<ContractConditions> fetchContractsConditions(ContractConditionParams params) async {
    final data = await _api.fetchContractsConditions(params);
    return ContractConditions.fromDto(data.payload!);
  }

  Future<SchedulePriceOpportunity> fetchSchedulePriceDetailForOpportunity(SchedulePriceOpportunityParams params) async {
    final data = await _api.fetchSchedulePriceDetailForOpportunity(params);
    return data.payload!;
  }

  Future<TypeApproveModelDto> fetchTypeApprove() async {
    final data = await _api.fetchTypeApprove();
    return data.payload!;
  }

  Future<List<EmployeeOpportunityTypeDto>> fetchEmployeesTypesOpportunity() async {
   final data = await _api.fetchEmployeesTypesOpportunity();
   return data.payload!;
  }

  Future<List<EmployeeOpportunityDto>> fetchEmployeesOpportunities(EmployeesOpportunityParams params) async {
    final data = await _api.fetchEmployeesOpportunities(params);
    return data.payload!;
  }

  Future<List<ArrivalDepartureTypeDto>> fetchTypesArrivalDeparture() async {
    final data = await _api.fetchTypesArrivalDeparture();
    return data.payload!;
  }

  Future<List<Job>> fetchJobsByProjectId(int projectId) async {
    final data = await _api.fetchJobsByProjectId(projectId);
    return data.payload?.map((e) => Job.fromDto(e)).toList() ?? [];
  }
}
