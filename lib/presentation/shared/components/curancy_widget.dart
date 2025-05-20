import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

import '../../presentationUser/resources/colors.dart';
import 'index.dart';

class CurancyWidget extends BaseStatelessWidget {
  final String valuePrice;
  final TextStyle? valueStyle;

  CurancyWidget({Key? key, required this.valuePrice, this.valueStyle})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "${valuePrice} ${strings.saudi_riyals}",
      style:
          valueStyle ??
          kTextRegular.copyWith(
            color: kBlack.withOpacity(0.8),
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
    );
  }
}
