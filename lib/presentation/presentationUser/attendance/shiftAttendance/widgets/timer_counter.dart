import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import '../../../resources/colors.dart';
import '../../../resources/constants.dart';

class TimerCounter extends StatelessWidget {
  final String endTimeDateTime;
  final TextStyle? style;
  TimerCounter({Key? key, required this.endTimeDateTime, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('endTimeDateTime: $endTimeDateTime');
    return Row(
      children: [
        const Icon(
          Icons.access_time,
          color: kYellow_00,
          size: 14,
        ),
        const SizedBox(width: 4),
        CountdownTimer(
            endTime:  DateTime.parse(endTimeDateTime).millisecondsSinceEpoch,
            widgetBuilder: (c, time) {
              final hour = time != null && time.hours != null ? time.hours! : 0;
              if (time != null) {
                return  Text(
                  '${hour.toString().padLeft(2, '0')}:${time.min.toString().padLeft(2, '0')}:${time.sec.toString().padLeft(2, '0')}',
                  style: style ?? kTextMedium.copyWith(fontSize: 12,color: kRed_01),
                );
              }
              return  Text(
                '00:00:00',
                style: kTextMedium.copyWith(fontSize: 12,color: kYellow_00),);
            }
        ),
      ],
    );
  }

}