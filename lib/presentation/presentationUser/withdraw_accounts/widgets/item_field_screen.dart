
import 'package:flutter/cupertino.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

Widget itemContainer(String text, {required Widget child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 24,
      ),
      Text(
        text,
        style: kTextMedium.copyWith(fontSize: 16, color: kFontDark),
      ),
      const SizedBox(
        height: 10,
      ),
      child
    ],
  );
}
