import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../../../common/common_state.dart';
import '../../../../../data/models/add_request_prams.dart';
import '../../../../../data/repositories/requests_user_repository.dart';
import '../../../../../domain/entities/ShiftRquestType.dart';

@Injectable()
class AddRequestsUserCubit extends BaseCubit {
  final RequestsUserRepository repository;

  AddRequestsUserCubit(this.repository);

  fetchRequestsUserType() async {
    executeBuilder(() => repository.fetchRequestsUserType(),
        onSuccess: (value) async {
      emit(Initialized<List<ShiftRquestType>>(data: value));
    });
  }

  Future<void> addRequest(AddRequestPrams params) async {
    executeEmitterListener(() => repository.addRequest(
          addRequestPrams: params,
        ));
  }



}
