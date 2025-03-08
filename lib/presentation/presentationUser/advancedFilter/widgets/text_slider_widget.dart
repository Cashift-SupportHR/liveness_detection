import 'package:flutter/cupertino.dart';

import '../../resources/colors.dart';
import '../../resources/constants.dart';

class TextSliderWidget extends StatelessWidget {
  final String minimum;
  final String maximum;

  const TextSliderWidget({Key? key, required this.minimum, required this.maximum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          minimum,
          style: kTextSemiBold.copyWith(color: kBattleShipGrey2, fontSize: 16),
        ),
        Text(
          maximum,
          style: kTextSemiBold.copyWith(color: kBattleShipGrey2, fontSize: 16),
        ),
      ],
    );
  }
}