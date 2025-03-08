import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/models/add_edit_classification_prams.dart';
import '../../../data/repositories/classification_repository.dart';
 import '../../../domain/entities/classification.dart';

@Injectable()
class ClassificationCubit extends BaseCubit {
  final ClassificationRepository _repository;

  ClassificationCubit(this._repository);

  fetchInitialData({required int type}) async {
    executeBuilder(() => _repository.fetchClassification(type), onSuccess: (result) {
      final data = result.map((e) => Classification.fromDto(e)).toList();
      emit(Initialized<List<Classification>>(data: data));
    });
  }

  deleteClassification({required int id}) async {
    try {
      emit(LoadingStateListener());
      final message = await _repository.deleteClassification(id);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      print(e);
      print("error data");
      emit(FailureStateListener(e));
    }
  }

  addEditClassification({required AddEditClassificationPrams addEditClassificationPrams}) async {
    try {
      emit(LoadingStateListener());
      final message = await _repository.addEditClassification(addEditClassificationPrams: addEditClassificationPrams);
      emit(SuccessStateListener(data: message));
    } catch (e) {
      print(e);
      print("jjkjkjkjk");
      emit(FailureStateListener(e));
    }
  }
}
