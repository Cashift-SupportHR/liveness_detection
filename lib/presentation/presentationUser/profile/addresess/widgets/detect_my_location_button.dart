import 'package:flutter/material.dart';

import '../../../resources/colors.dart';

class DetectMyLocationButton extends StatelessWidget {
  final double? bottom;
  final double? top;
  final void Function()? onPressed;
  const DetectMyLocationButton({Key? key, required this.onPressed, this.bottom, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      start: 10,
      top: top,
      bottom: bottom,
      child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 8, start: 1),
          child: FloatingActionButton.small(
            backgroundColor: kWhite,
            elevation: 2,
            onPressed: onPressed,
            child: const Icon(
              Icons.my_location,
              color: kPrimaryDark,
            ),
          )),
    );
  }
}
