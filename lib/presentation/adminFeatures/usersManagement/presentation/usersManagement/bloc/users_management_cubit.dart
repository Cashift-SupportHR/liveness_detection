import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/users_management_repository.dart';
import '../../../domain/entities/user_management.dart';

@Injectable()
class UsersManagementCubit extends BaseCubit {
  final UsersManagementRepository repository;

  UsersManagementCubit(this.repository);

  List<UserManagement> users = [];

  Future<void> fetchUsers(int type) async {
    executeBuilder(() => repository.fetchUsers(type), onSuccess: (value) {
      users = value.map((e) => UserManagement.fromDto(e)).toList();
      emit(Initialized<List<UserManagement>>(data: users));
    });
  }

  Future<void> changeUserStatus(String id) async {
    emit(LoadingStateListener());
    try {
      final message = await repository.changeUserStatus(id);
      emit(SuccessStateListener(data: message));
    } on Exception catch (e) {
      emit(FailureStateListener(e));
    }
  }

  void searchByText(String value) {
    emit(LoadingState());
    final usersSearched = users
        .where((user) =>
            (user.name != null && user.name!.contains(value)) ||
            (user.phoneNumber != null && user.phoneNumber!.contains(value)) ||
            (user.email != null && user.email!.contains(value)))
        .toList();
    emit(Initialized<List<UserManagement>>(data: usersSearched));
  }
}
