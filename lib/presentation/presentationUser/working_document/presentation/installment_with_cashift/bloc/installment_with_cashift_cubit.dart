import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/working_document_repository.dart';
import '../../../domain/entities/installment_with_cashift.dart';


@Injectable()
class InstallmentWithCashiftCubit extends BaseCubit {
  final WorkingDocumentRepository repository;

  InstallmentWithCashiftCubit(this.repository);


  Future<void> fetchInstallmentWithCashiftData(int certificateId) async {

   executeBuilder(() => repository.fetchInstallmentWithCashiftData(certificateId), onSuccess: (value) {
     final data = value.map((e) => InstallmentWithCashift.fromDto(e)).toList();
      emit(Initialized<List<InstallmentWithCashift>>(data: data));
   });
  }

  Future<void> addInstallmentWithCashift(int installmentId) async {
    executeEmitterListener(() => repository.addInstallmentWithCashift(installmentId));
  }

}
