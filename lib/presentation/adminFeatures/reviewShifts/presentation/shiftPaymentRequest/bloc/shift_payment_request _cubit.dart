import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/adminFeatures/reviewShifts/data/repositories/review_opportunities_repository.dart';
import 'package:shiftapp/presentation/adminFeatures/reviewShifts/data/models/confirm_shift_payment_request.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/models/complet_opportunity_dto.dart';
import '../../../data/models/completed_opportunity_dto.dart';
import '../../../data/models/job_evaluations_dto.dart';
import 'shift_payment_request_state.dart';

@injectable
class ShiftPaymentCubitCubit extends BaseCubit {
  final ReviewOpportunitiesRepository _repository;
  ShiftPaymentCubitCubit(this._repository);

  Future<void> fetchShiftPaymentRequiredData(
      CompletedOpportunityData opportunity) async {
    try {
      final freelancerId = opportunity.id!;
      final isOvertime = opportunity.isOvertime();
      emit(LoadingState());
      List<JobEvaluationsDto>? evaluations;
      if (!isOvertime) {
        evaluations = await _repository.fetchGetJobEvaluations(freelancerId);
      }
      final blocCases = await _repository.fetchBlockTypes();
      emit(ShiftPaymentRequestState(
          evaluations: evaluations,
          blocCases: blocCases.listBlockType ?? [],
          freelancerId: freelancerId));
    } catch (e) {
      emit(ErrorState(e));
    }
  }

  Future<void> submitRequestConfirmation(
      ConfirmShiftPaymentRequest params) async {
    try {
      emit(LoadingStateListener());
      final message = await _repository.confirmShiftPaymentRequest(params);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }
}
