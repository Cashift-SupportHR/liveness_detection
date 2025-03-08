import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../data/models/add_covenant_focus_point_params.dart';
import '../../../../domain/entities/covenant.dart';

class CustodyInitializeState extends CommonStateFBuilder {
  final List<Covenant> custodyTypes;
  final List<AddCovenantFocusPointParams>? custody;
  final bool isNew ;
  CustodyInitializeState({required this.custodyTypes, this.custody ,this.isNew=true});
}
