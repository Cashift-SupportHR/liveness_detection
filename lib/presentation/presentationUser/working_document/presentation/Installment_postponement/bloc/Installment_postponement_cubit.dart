import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../data/repositories/working_document_repository.dart';


@Injectable()
class InstallmentPostponementCubit extends BaseCubit {
  final WorkingDocumentRepository repository;

  InstallmentPostponementCubit(this.repository);

  Future<void> saveInstallmentPostponement({int? paymentId, String? description}) async {
    executeEmitterListener(() => repository.saveInstallmentPostponement(paymentId: paymentId, description: description));
  }

}
