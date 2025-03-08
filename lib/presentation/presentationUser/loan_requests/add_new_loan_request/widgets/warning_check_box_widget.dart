import 'package:flutter/material.dart';

import '../../../common/common_state.dart';
import '../../../resources/colors.dart';
import '../../../salarydefinitionrequest/requests/widgets/warning_widget.dart';

class WarningCheckBoxWidget extends StatelessWidget {
  final StreamState<String> descriptionStream;
  final Function(bool?)? onChanged;
  const WarningCheckBoxWidget({Key? key, required this.descriptionStream, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? value = false;
    return
      StreamBuilder<String>(
          stream: descriptionStream.stream,
          builder: (context, snapshot) {
            return snapshot.data == null
                ? const SizedBox()
                : WarningWidget(
              warningText: snapshot.data ?? '',
              color: kGreen_2,
              iconSize: 20,
              padding: const EdgeInsetsDirectional.only(start: 5, top: 10, bottom: 10),
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              leading: StatefulBuilder(
                builder: (context, setState) {
                  return Checkbox(
                    value: value,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                    visualDensity: VisualDensity.compact,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue;
                      });
                      onChanged!(newValue);
                    },
                  );
                }
              ),
            );
          });
  }
}
