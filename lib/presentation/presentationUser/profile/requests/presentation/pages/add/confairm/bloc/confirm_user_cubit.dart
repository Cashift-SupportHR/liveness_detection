import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../data/models/confirm_reques_prams.dart';
import '../../../../../data/repositories/requests_user_repository.dart';



@Injectable()
class ConfirmRequestsUserCubit extends BaseCubit {

  final RequestsUserRepository repository;

  ConfirmRequestsUserCubit(this.repository);



  Future<void> confirmRequest(ConfirmRequesPrams params) async {
    executeEmitterListener(() => repository.confirmRequest(
      confirmRequesPrams: params,
    ));
  }

}
