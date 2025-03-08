import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/working_document_repository.dart';


@Injectable()
class PayWithSalaryCubit extends BaseCubit {
  final WorkingDocumentRepository repository;

  PayWithSalaryCubit(this.repository);


  Future<void> fetchUsers() async {

   // executeBuilder(() => repository.fetchAdvantagesFreelancerDocument(), onSuccess: (value) {
      // users = value.map((e) => UserManagement.fromDto(e)).toList();
      emit(Initialized<List<String>>(data: [
        'حفظ حقوقك الوظيفيه من قبل الوزاره السعوديه والتأكد من وصول راتبك في الوقت المحدد له',
        'التأمين علي حياتك  واتاحه الوسايل الكافيه لجعل بيئه العمل  افضل',
        'هذه الخاصيه متاحه فقط للسعوديين',
        'سيتوفر لك الباقات المختلفه من شركه الاتصالات'
      ]));
  //  });
  }

}
