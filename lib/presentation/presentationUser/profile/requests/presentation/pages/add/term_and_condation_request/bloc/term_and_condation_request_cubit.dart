import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../../../common/common_state.dart';
import '../../../../../data/models/terms_and_conditions_requests_prams.dart';
import '../../../../../data/repositories/requests_user_repository.dart';
import '../../../../../domain/entities/TermsAndConditionsRequests.dart';

@Injectable()
class TermCondationRequestsUserCubit extends BaseCubit {
  final RequestsUserRepository repository;

  TermCondationRequestsUserCubit(this.repository);

  fetchTermsAndConditionsRequests(String requestTypeCode) async {
    executeBuilder(
        () => repository.fetchTermsAndConditionsRequests(
            termsAndConditionsRequestsPrams: TermsAndConditionsRequestsPrams(
                requestStatusCode: "crs-1",
                requestTypeCode: requestTypeCode)), onSuccess: (value) async {
      emit(Initialized<List<TermsAndConditionsRequests>>(data: value));
    });
  }
}
