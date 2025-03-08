import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../../common/common_state.dart';
import '../../../../data/repositories/requests_user_repository.dart';
import '../../../../domain/entities/RequestsUser.dart';

@Injectable()
class RequestsUserCubit extends BaseCubit {
  final RequestsUserRepository repository;

  RequestsUserCubit(this.repository);

  fetchRequestsUser() async {
    executeBuilder(() => repository.fetchRequestsUser(),
        onSuccess: (value) async {
      emit(Initialized<List<RequestsUser>>(data: value));
    });
  }
}
