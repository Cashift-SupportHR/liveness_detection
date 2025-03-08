import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../data/models/notification_offers/notification_offer_params.dart';
import '../../../../data/repositories/notificationOffers/notification_offers_repository.dart';
import '../../../../domain/entities/job_offers/job_offer_dto.dart';

@Injectable()
class NotificationOffersCubit extends BaseCubit {
  final NotificationOffersRepository repository;

  NotificationOffersCubit(this.repository);

  Future<void> fetchNotificationOffers(NotificationOfferParams params) async {
    emit(LoadingState());
    try {
      final result = await repository.fetchNotificationOffers(params);

      emit(Initialized<List<JobOfferDto>>(data: result));
    } on Exception catch (e) {
      print('$e');
      emit(ErrorState(e));
    }

  }

}
