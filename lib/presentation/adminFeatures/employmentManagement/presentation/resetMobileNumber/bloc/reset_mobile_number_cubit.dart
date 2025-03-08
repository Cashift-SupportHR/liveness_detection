import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/adminFeatures/employmentManagement/presentation/resetMobileNumber/bloc/reset_mobile_number_state.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/models/index.dart';
import '../../../domain/entities/index.dart';


@Injectable()
class ResetMobileNumberCubit extends BaseCubit {
  final EmploymentManagementRepository repository;

  ResetMobileNumberCubit(this.repository);

  StreamStateInitial<List<EmployeeData>?> employeeDataStream =
      StreamStateInitial();

  void fetchInitialData() {
    executeBuilder(
      () => repository.fetchPhoneNumberData(),
      onSuccess: (data) async {
        final notificationTypeCodes = await repository.fetchNotificationTypes();
        emit(ResetMobileNumberState(
          resetPhoneData: data,
          notificationTypeCodes: notificationTypeCodes ?? [],
        ));
      },
    );
  }

  int id = 0;
  void changePhoneNumber(ChangePhoneNumberParams params )   {
    executeListener(() => repository.changePhoneNumber(params), onSuccess: (data) {
      id = data.payload ?? 0;
      emit((SuccessStateListener<int>()));
    });
  }

  void resendChangePhoneNumberCode()   {
    executeListener(() => repository.resendChangePhoneNumberCode(id), onSuccess: (data) {
      emit((SuccessStateListener()));
    });
  }


  void checkChangePhoneNumberCode( String code )   {
    executeEmitterListener(() => repository.checkChangePhoneNumberCode(CheckPhoneCodeParams(
      id: id,
      code: code.toString(),
    )));
  }
}
