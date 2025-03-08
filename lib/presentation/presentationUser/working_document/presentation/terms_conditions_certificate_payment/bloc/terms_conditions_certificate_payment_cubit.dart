import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/working_document_repository.dart';
import '../../../domain/entities/term_condition_certificate_payment.dart';
import '../../../domain/entities/working_document.dart';


@Injectable()
class TermsConditionsCertificatePaymentCubit extends BaseCubit {
  final WorkingDocumentRepository repository;

  TermsConditionsCertificatePaymentCubit(this.repository);

  Future<void> fetchTermsConditionsCertificatePayment(int paymentId) async {

   // executeBuilder(() => repository.fetchTermsConditionsCertificatePayment(paymentId), onSuccess: (value) {
   //   final data = value.map((e) => TermConditionCertificatePayment.fromDto(e)).toList();
   //    emit(Initialized<List<TermConditionCertificatePayment>>(data: data));
   // });
    emit(Initialized<List<TermConditionCertificatePayment>>(data: [
      TermConditionCertificatePayment(
        id: 1,
        name: 'حفظ حقوقك الوظيفيه من قبل الوزاره السعوديه والتأكد من وصول راتبك في الوقت المحدد له',
      ),
      TermConditionCertificatePayment(
        id: 2,
        name: 'التأمين علي حياتك  واتاحه الوسايل الكافيه لجعل بيئه العمل  افضل',
      ),
      TermConditionCertificatePayment(
        id: 2,
        name: 'سيتوفر لك الباقات المختلفه من شركه الاتصالات',
      ),
    ]));
  }

}
