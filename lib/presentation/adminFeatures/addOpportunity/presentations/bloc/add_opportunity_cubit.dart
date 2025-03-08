import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import 'package:shiftapp/presentation/presentationUser/common/stream_data_state.dart';

import '../../../../shared/models/common_list_item.dart';
import '../../../projectsManagement/data/repositories/projects_management_repository.dart';
import '../../../projectsManagement/domain/entities/job.dart';
import '../../../shared/domain/entities/opportunities/opportunity.dart';
import '../../../usersManagement/data/repositories/users_management_repository.dart';
import '../../data/models/index.dart';
import '../../domain/entities/index.dart';

@injectable
class AddOpportunityCubit extends BaseCubit {
  final AddOpportunityRepository repository;
  final ProjectsManagementRepository projectsRepository;
  final UsersManagementRepository usersRepository;

  AddOpportunityCubit(this.repository, this.projectsRepository, this.usersRepository);

  final priceOpportunityStream =
      StreamStateInitial<SchedulePriceOpportunity?>();
  final shiftDataStream = StreamStateInitial<Shift?>();

  final projectsStream = StreamStateInitial<List<CommonListItem>?>();
  final jobsStream = StreamStateInitial<List<Job>?>();
  final contractsStream = StreamDataStateInitial<ContractConditions>();

  addOpportunity(AddOpportunityParams params, bool isEdit) async {
    emit(LoadingStateListener());
    try {
      if (isEdit) {
        final response = await repository.editOpportunity(params);
        emit(SuccessStateListener(data: response));
      } else {
        final response = await repository.addOpportunity(params);
        emit(SuccessStateListener(data: response));
      }
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  fetchDataOpportunityDropDown() async {
    try {
      emit(LoadingState());
      final calcOpp = await repository.fetchCalcOpp();
      final typeApprove = await repository.fetchTypeApprove();
      final companies = await projectsRepository.fetchCompanies();
      final employeesTypes = await fetchEmployeesTypesOpportunity();
      final arrivalDepartureTypes = await fetchTypesArrivalDeparture();
      emit(InitializedOpportunity(
          companies: companies,
        projectsStream: projectsStream,
        contractConditionsStream: contractsStream,
        calcOpportunity: CalcOpportunity.fromDto(calcOpp),
          jobsStream: jobsStream,
        shiftDataStream: shiftDataStream,
        typeApprove: TypeApproveModel.fromDto(typeApprove),
        priceOpportunityStream: priceOpportunityStream,
        employeesTypes: employeesTypes,
        arrivalDepartureTypes: arrivalDepartureTypes,
      ));
    } catch (e) {
      emit(ErrorState(e));
    }
  }

  fetchDataForEdit(Opportunity opportunity){
    fetchProjectsCompanyId(opportunity.companyId ?? 0);
    fetchJobsByProjectId(opportunity.projectId ?? 0);
    fetchListShift(FilterShiftParams(
      jobId: opportunity.jobId ?? 0,
      projectId: opportunity.projectId ?? 0,
    )
    );
    contractsStream.setData(ContractConditions(
      projectId: opportunity.projectId ?? 0,
      jobId: opportunity.jobId ?? 0,
      id: opportunity.contractConditionsId ?? 0,
      companyId: opportunity.companyId ?? 0,
      startAllowMinutes: opportunity.startAllowMinutes,
    ));
  }


  Future<void> fetchSchedulePriceDetailForOpportunity(
      SchedulePriceOpportunityParams params) async {
    emit(LoadingStateListener());
    try {
      final response =
          await repository.fetchSchedulePriceDetailForOpportunity(params);
      priceOpportunityStream.setData(response);
      emit(CloseDialogState());
    } catch (e) {
      priceOpportunityStream.setError(e);
      emit(FailureStateListener(e));
    }
  }

  Future<List<EmployeeOpportunityType>>
      fetchEmployeesTypesOpportunity() async {
    final data = await repository.fetchEmployeesTypesOpportunity();
    final employeesTypes =
        data.map((e) => EmployeeOpportunityType.fromDto(e)).toList();
    return employeesTypes;
  }

  Future<List<ArrivalDepartureType>>
  fetchTypesArrivalDeparture() async {
    final data = await repository.fetchTypesArrivalDeparture();
    final arrivalDepartureTypes =
    data.map((e) => ArrivalDepartureType.fromDto(e)).toList();
    return arrivalDepartureTypes;
  }

  Future<void> fetchProjectsCompanyId(int companyId) async {
    contractsStream.clearData();
    jobsStream.setData(null);
    try {
      final data = await usersRepository.fetchListProjectsByCompanyId(companyId);
      projectsStream.setData(data);
    } on Exception catch (e) {
      projectsStream.setError(e);
    }
  }

  Future<void> fetchJobsByProjectId(int projectId) async {
    try {
      final data = await repository.fetchJobsByProjectId(projectId);
      jobsStream.setData(data);
    } on Exception catch (e) {
      jobsStream.setError(e);
    }
  }

  Future<void> fetchContractsConditions(ContractConditionParams params) async {
    try {
      contractsStream.start();
      final data = await repository.fetchContractsConditions(params);
      contractsStream.setData(data);
    } on Exception catch (e) {
      contractsStream.setError(e);
    }
  }

  Future<void> fetchListShift(FilterShiftParams params) async {
    try {
      final data = await repository.fetchListShift(params);
      shiftDataStream.setData(Shift.fromDto(data));
    } on Exception catch (e) {
      shiftDataStream.setError(e);
    }
  }
}
