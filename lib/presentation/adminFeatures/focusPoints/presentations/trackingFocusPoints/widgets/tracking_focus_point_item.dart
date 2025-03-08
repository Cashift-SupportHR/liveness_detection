import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';

import '../../../data/models/focus_points_types_dto.dart';
import 'point_image.dart';
import 'tracking_point_widget.dart';

class TrackingFocusPointItem extends StatelessWidget {
  final FreelanceApply freelanceApply;

  const TrackingFocusPointItem({Key? key, required this.freelanceApply})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        TrackingPointWidget(
          freelanceApply: freelanceApply,
        ),
        PointImage(
          image: freelanceApply.imageFocusPoints ?? '',
          size: 35,
          color: kColorFromHex(freelanceApply.statusColor ?? '000000'),
        ),
      ],
    );
  }
}
