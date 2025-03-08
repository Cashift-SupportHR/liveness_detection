import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../data/models/index.dart';


@Injectable()
class GeneralViolationCubit extends BaseCubit {
  final GeneralViolationsRepository _repository;

  GeneralViolationCubit(this._repository);

  void fetchWorkHazardDetails(int id) {
    executeEmitterData(() => _repository.fetchGeneralViolationDetails(id));
  }
}
