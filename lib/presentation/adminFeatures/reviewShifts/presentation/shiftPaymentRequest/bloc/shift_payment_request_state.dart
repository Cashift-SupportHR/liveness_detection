import 'package:shiftapp/presentation/adminFeatures/reviewShifts/data/models/job_evaluations_dto.dart';
import 'package:shiftapp/presentation/adminFeatures/shared/data/models/value_item.dart';

import '../../../../../presentationUser/common/common_state.dart';

class ShiftPaymentRequestState extends CommonStateFBuilder{
  final List<JobEvaluationsDto>  ? evaluations;
  final List<ValueItem> blocCases ;
  final int  freelancerId ;
  ShiftPaymentRequestState({ this.evaluations ,required this.blocCases,required this.freelancerId});
}