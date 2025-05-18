import 'package:get/get.dart';
import 'package:shiftapp/extensions/extensions.dart';
import 'package:shiftapp/utils/app_utils.dart';

import '../../../../../../../domain/entities/shared/date_formatter.dart';
import '../../../../../../../utils/app_icons.dart';
import '../../../../../../presentationUser/attendance/facerecognation/index.dart';
import '../../../../../../presentationUser/common/common_state.dart';
import '../../../../../../presentationUser/common/stream_data_state.dart';
import '../../../../../../presentationUser/resources/constants.dart';
import '../../../../../../shared/components/base_stateless_widget.dart';
import '../../../../../../shared/components/buttons/row_buttons.dart';
import '../../../../../../shared/components/helper_widgets.dart';
import '../../../../../../shared/components/text_field/build_text_field_item.dart';
import '../../../../data/models/vehicle_video_params.dart';

class SearchVehicleCameraSheet extends BaseStatelessWidget {
  final VehicleVideoParams params;
  final Function(VehicleVideoParams) onSearch;
  SearchVehicleCameraSheet({super.key, required this.params, required this.onSearch});


  static void show(BuildContext context, {required VehicleVideoParams params, required Function(VehicleVideoParams) onSearch}) {
    showAppModalBottomSheet(
      context: context,
      title: context.getStrings().start_video,
      isScrollControlled: false,
      child: SearchVehicleCameraSheet(
        params: params,
        onSearch: (VehicleVideoParams params) {
          Navigator.pop(context);
          onSearch(params);
        },
      ),
    );
  }



  TextEditingController controllerDateFrom = TextEditingController();
  TextEditingController controllerDateTo = TextEditingController();
  TextEditingController controllerTimeFrom = TextEditingController();
  TextEditingController controllerTimeTo = TextEditingController();
  StreamStateInitial<DateTime> dateFromStream = StreamStateInitial();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _initDate();
    return Form(
      key: _key,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              strings.select_video_date,
              style: kTextMedium.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DateTimeTextField(
                    title: strings.date_from,
                    controller: controllerDateFrom,
                    onConfirmDate: (dateTime) {
                      dateFromStream.setData(dateTime);
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: DateTimeTextField(
                    title: strings.hour,
                    isDate: false,
                    controller: controllerTimeFrom,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: StreamBuilder<DateTime?>(
                    stream: dateFromStream.stream,
                    builder: (context, snapshot) {
                      checkIfDateToIsValid(snapshot.data, context);
                      return DateTimeTextField(
                        title: strings.date_to,
                        firstDate: snapshot.data,
                        controller: controllerDateTo,
                      );
                    }
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: DateTimeTextField(
                    title: strings.hour,
                    isDate: false,
                    controller: controllerTimeTo,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            RowButtons(
              textSaveButton: strings.search,
              textCancelButton: strings.cancel,
              margin: EdgeInsets.zero,
              onSave: () {
                if (_key.currentState?.validate() ?? false) {
                  params.beginTime = getDateTimeFromString(controllerDateFrom.text, controllerTimeFrom.text);
                  print('getDateTimeFromString ${params.beginTime}');
                  params.endTime = getDateTimeFromString(controllerDateTo.text, controllerTimeTo.text);
                  onSearch(params);
                }
              },
              onCancel: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void checkIfDateToIsValid(DateTime? date, BuildContext context) {
    if (date != null && controllerDateTo.text.isNotEmpty) {
      DateTime dateTo = DateFormatter.dateFromString(
        controllerDateTo.text,
        pattern: DateFormatter.DAY_MONTH_YEAR,
      );
      if (date.isAfter(dateTo)) {
        controllerDateTo.clear();
      }
    }
  }

  String getDateTimeFromString(String date, String time) {
    print('getDateTimeFromString $date $time');
    DateTime dateTime = DateFormatter.parseDateAndTimeOfDay(
      '$date $time',
    );
    return dateTime.toIso8601String();
  }

  void _initDate() {
    if (params.beginTime.isNotNullOrEmpty()) {
      DateTime dateTime = DateFormatter.dateFromString(
        params.beginTime!,
        pattern: DateFormatter.TIME_STAMP,
      );
      controllerDateFrom.text = DateFormatter.formatDate(
        dateTime,
        DateFormatter.DAY_MONTH_YEAR,
        local: "en",
      );
      controllerTimeFrom.text = TimeOfDay(
        hour: dateTime.hour,
        minute: dateTime.minute,
      ).format(Get.context!);
    }
    if (params.endTime.isNotNullOrEmpty()) {
      DateTime dateTime = DateFormatter.dateFromString(
        params.endTime!,
        pattern: DateFormatter.TIME_STAMP,
      );
      controllerDateTo.text = DateFormatter.formatDate(
        dateTime,
        DateFormatter.DAY_MONTH_YEAR,
        local: "en",
      );
      controllerTimeTo.text = TimeOfDay(
        hour: dateTime.hour,
        minute: dateTime.minute,
      ).format(Get.context!);
    }
  }
}

class DateTimeTextField extends BaseStatelessWidget {
  final String? title;
  final DateTime? firstDate;
  final TextEditingController? controller;
  final bool isDate;
  final Function(DateTime)? onConfirmDate;
  final Function(TimeOfDay)? onConfirmTime;

  DateTimeTextField(
      {super.key, this.title, this.firstDate, this.controller, this.isDate = true, this.onConfirmDate, this.onConfirmTime});

  @override
  Widget build(BuildContext context) {
    return BuildTextFieldItem(
      heightSizedBox: 2,
      title: title,
      prefixIcon: isDate ? AppIcons.calendarOutline : AppIcons.clockOutline,
      controller: controller,
      onTap: () async {
        if (isDate) {
          await AppUtils.showDateTimePicker(context,
            firstDate: firstDate,
            initialDate: firstDate ?? DateTime.now(),
            onConfirm: (DateTime date) {
              controller?.text = DateFormatter.formatDate(
                  date, DateFormatter.DAY_MONTH_YEAR,
                  local: "en");
              onConfirmDate?.call(date);
            },
          );
        } else {
           await AppUtils.showTimeDayPicker(
            context,
            onConfirm: (TimeOfDay time) {
              controller?.text = time.format(context);
              onConfirmTime?.call(time);
            },
          );
        }
      },
    );
  }
}
