import 'package:flutter/material.dart';
import '../../../../shared/components/app_cupertino_button.dart';
import '../../../../shared/components/base_stateless_widget.dart';
import '../../../../shared/components/material_text_field.dart';
import '../../../common/common_state.dart';
import '../../../resources/colors.dart';
import '../../../resources/constants.dart';

class LocationDetailsSheet extends BaseStatelessWidget {
  final StreamState<bool> streamController;
  Function(String) addAddressDetails;
  final String locationName;
  final TextEditingController controller;

  LocationDetailsSheet(
      {Key? key,
      required this.locationName,
      required this.addAddressDetails,
      required this.controller,
      required this.streamController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      bottom: 0,
      end: 0,
      start: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimary.withOpacity(0.15),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kCoolTeal.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(Icons.location_on),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(strings.home_address, style: kTextMedium),
                    Text(strings.your_current_location,
                        style: kTextRegular.copyWith(fontSize: 12)),
                  ],
                )
              ],
            ),
            Text(locationName ?? '',
                style: kTextRegular.copyWith(fontSize: 12)),
            const SizedBox(
              height: 10,
            ),
            Text(strings.address, style: kTextMedium),
            const SizedBox(
              height: 5,
            ),
            MaterialTextField(
              controller: controller,
            ),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<bool>(
              stream: streamController.stream,
              builder: (context, snapshot) {
                return AppCupertinoButton(
                  text: strings.save_button,
                  onPressed: !(snapshot.data ?? false)
                      ? null
                      : () {
                          addAddressDetails(controller.text);
                        },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
