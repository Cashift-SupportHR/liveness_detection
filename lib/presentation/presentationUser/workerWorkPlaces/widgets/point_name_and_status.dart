import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';

import '../../resources/constants.dart';

///  Created by harbey on 5/8/2023.
class FocusPointNameAndStatus extends StatelessWidget {
  final String name;
  final String status;
  final TextStyle? styleName;
  final TextStyle? styleStatus;

  const FocusPointNameAndStatus({Key? key, required this.name, required this.status, this.styleName, this.styleStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(name,
            style: styleName ?? kTextBoldTitle.copyWith(fontSize: 14)),
       const SizedBox(
          width: 5,
        ),
        Text('( $status )',
            style: styleStatus ?? kTextMedium.copyWith(fontSize: 10, color: kPrimary)),
      ],
    );
  }
}
