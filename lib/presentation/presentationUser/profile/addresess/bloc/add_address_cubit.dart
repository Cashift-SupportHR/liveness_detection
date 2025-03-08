import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import 'package:shiftapp/data/models/add-address/index.dart';

 import '../../../../../data/repositories/add-address/add_address_repository.dart';

@Injectable()
class AddAddressCubit extends BaseCubit {
  final AddAddressRepository repository;

  AddAddressCubit(this.repository);

  Future<void> fetchFavoriteAddresses() async {
    emit(LoadingState());
    try {
      final result = await repository.fetchFavoriteAddresses();

      emit(Initialized(data: result));
    } on Exception catch (e) {
      emit(ErrorState(e));
    }

  }

  Future<void> addFavoriteAddresses(Address address, bool isEdit) async {
    String message = '';
    emit(LoadingStateListener());
    try {
      if (isEdit) {
        message = await repository.editFavoriteAddresses(address);
      } else {
        message =  await repository.addFavoriteAddresses(address);
      }
      emit(SuccessStateListener(data: message));
    } catch (e) {
      emit(FailureStateListener(e));
    }

  }

}
