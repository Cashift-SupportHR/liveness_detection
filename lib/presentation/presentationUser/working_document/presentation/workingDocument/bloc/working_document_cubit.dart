import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/working_document_repository.dart';
import '../../../domain/entities/working_document.dart';


@Injectable()
class WorkingDocumentCubit extends BaseCubit {
  final WorkingDocumentRepository repository;

  WorkingDocumentCubit(this.repository);


  Future<void> fetchWorkingDocumentData(int jobId) async {

   executeBuilder(() => repository.fetchWorkingDocumentData(jobId), onSuccess: (value) {
     WorkingDocument data = WorkingDocument.fromDto(value);
      emit(Initialized<WorkingDocument>(data: data));
   });
  }

}
