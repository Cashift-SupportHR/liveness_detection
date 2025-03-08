import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

class ColumnTexts extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool? isDivider;
  const ColumnTexts({Key? key, required this.title, required this.subtitle, this.isDivider = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              title,
              style: kTextMedium.copyWith(color: kPrimary, fontSize: 10),
            ),
            const SizedBox(height: 18),
            Text(
              subtitle,
              style: kTextLabelNormal.copyWith(color: kBattleShipGrey, fontSize: 10),
            ),
          ],
        ),
        isDivider!
            ?
        Container(
         margin: const EdgeInsets.symmetric(horizontal: 16),
          width: 1,
          height: 42,
          decoration: BoxDecoration(
            border: Border.all(color: kPrimary.withOpacity(0.60), width: 1),
          ),
        ) : const SizedBox(),
      ],
    );
  }
}
