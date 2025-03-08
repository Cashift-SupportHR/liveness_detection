import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../presentationUser/common/common_state.dart';
import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';

@injectable
class PeriodPricingCubit extends BaseCubit {
  final ProjectsManagementRepository _repository;
  PeriodPricingCubit(this._repository);

  StreamStateInitial<List<LastPrice>?> pricesPreviousStream = StreamStateInitial();

  addPeriodPricing(AddPeriodPricingParams addPeriodPricingParams) async {
    emit(LoadingStateListener());
    try {
      final message = await _repository.addPeriodPricing(addPeriodPricingParams: addPeriodPricingParams);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  editFocusPointCovenant(AddPeriodPricingParams addPeriodPricingParams) async {
    try {
      emit(LoadingStateListener());

      final message = await _repository.editPeriodPricing(addPeriodPricingParams: addPeriodPricingParams);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  Future<void> fetchInfoLastPricing({required int idShift, required int projectId}) async {
    try {
      pricesPreviousStream.setData(null);
      final dataLast = await _repository.fetchInfoLastPricing(projectId: projectId, idShift: idShift);
      final data = dataLast.map((e) => LastPrice.fromDto(e)).toList();
      pricesPreviousStream.setData(data);
    } catch (e) {
      print(e);
      print("uhevnlkl");
      pricesPreviousStream.setError(e);
    }
  }

  deletePeriodPrice({required int id}) async {
    emit(LoadingStateListener());
    try {
      final message = await _repository.deletePeriodPricing(id: id);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      print('deleteFocusPointCovenant err $e');

      emit(FailureStateListener(e));
    }
  }

  Future<void> fetchAddPeriodPrice({required int projectId, required int companyId, int? id}) async {
    emit(LoadingState());
    try {
      final labelUi = await _repository.fetchLabelAddPeriodOrder();
      final dataLabel = PeriodPricingLabel.fromDto(labelUi);
      PricingDetails dataDetailsResalt = PricingDetails();
      if (id != null && id != 0) {
        final dataDetails = await _repository.fetchPeriodPricingDetails(id);
        dataDetailsResalt = PricingDetails.fromDto(dataDetails);
        await fetchInfoLastPricing(idShift: dataDetailsResalt.shiftId!, projectId: projectId);
      }

      final shift = await _repository.fetchShift(projectId: projectId);
      final dataShift = shift.map((e) => ShiftTime.fromDto(e)).toList();

      final time = await _repository.fetchTimePrice(companyId: companyId);
      final dataTime = time.map((e) => TimePrice.fromDto(e)).toList();

      final job = await _repository.fetchAllJobForDrops();
      final dataJob = job.map((e) => Job.fromDto(e)).toList();
      emit(InitializedAddPeriodPricing(periodPricingLabel: dataLabel, pricingDetails: dataDetailsResalt, shiftTime: dataShift, timePrice: dataTime, job: dataJob));
    } on Exception catch (e) {
      emit(ErrorState(e));
    }
  }

  Future<void> fetchPeriodPrice({required int projectId}) async {
    emit(LoadingState());
    try {
      final result = await _repository.fetchPeriodPricing(projectId: projectId);
      final data = result.map((e) => PeriodPricing.fromDto(e)).toList();
      emit(Initialized<List<PeriodPricing>>(data: data));
    } on Exception catch (e) {
      emit(ErrorState(e));
    }
  }
}
