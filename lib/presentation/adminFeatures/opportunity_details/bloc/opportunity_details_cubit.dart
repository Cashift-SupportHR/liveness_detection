import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/adminFeatures/shared/data/models/opportunity_details_dto.dart';
import 'package:shiftapp/presentation/adminFeatures/shared/data/repositories/today_opportunity_repository.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../shared/data/models/approve_job_request_params.dart';
import '../../shared/data/models/update_attendance_params.dart';
import '../../shared/domain/entities/opportunities/OpportunityDetailsData.dart';
import '../../shared/domain/entities/opportunities/opportunity_details.dart';

@injectable
class OpportunityDetailsCubit extends BaseCubit {
  final TodayOpportunityRepository repository;

  OpportunityDetailsCubit(this.repository);

  Future<void> fetchOpportunityDetailsById(int id) async {
    emit(LoadingState());
    try {
      final result = await repository.fetchOpportunityDetailsById(id);
      emit(Initialized(data: OpportunityDetails.fromDto(result.payload ?? OpportunityDetailsDto())));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  fetchOpportunityDetails({
    required int id,
  }) async {
    executeBuilder(
        () => repository.fetchOpportunityDetails(
              id: id,
            ), onSuccess: (result) {
      final data = OpportunityDetailsData.fromDto(result);
      emit(Initialized<OpportunityDetailsData>(data: data));
    });
  }

  Future<void> approveJobRequest(ApproveJobRequestParams params) async {
    try {
      emit(LoadingStateListener());
      final result = await repository.approveJobRequest(params);
      emit(SuccessStateListener(data: result.message));
    } catch (e) {
      emit(FailureStateListener(e.toString()));
    }
  }

  Future<void> updateAttendance(UpdateAttendanceParams params) async {
    try {
      emit(LoadingStateListener());
      final result = await repository.updateAttendance(params);
      emit(SuccessStateListener(data: result.message));
    } catch (e) {
      emit(FailureStateListener(e.toString()));
    }
  }
}
