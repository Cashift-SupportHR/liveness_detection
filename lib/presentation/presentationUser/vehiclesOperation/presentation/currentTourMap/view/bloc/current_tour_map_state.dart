
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../common/stream_data_state.dart';
import '../../../../domain/entities/index.dart';


class CurrentTourMapState extends CommonStateFListener {
  final CurrentRoundTrip? currentRoundTrip;
  final StreamStateInitial<List<RoundTypeTermsAndCondition>?>?
  roundTypeTermsAndConditionStream;

  CurrentTourMapState({
     this.currentRoundTrip,
     this.roundTypeTermsAndConditionStream,
  });


}
