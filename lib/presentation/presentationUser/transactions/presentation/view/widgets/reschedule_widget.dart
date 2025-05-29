import 'package:shiftapp/presentation/shared/components/index.dart';
import '../../../../../shared/components/text_field/build_text_field_item.dart';
import '../../../../../shared/components/text_field/date_time_text_field_picker.dart';

class RescheduleWidget extends BaseStatelessWidget {
  final bool isReschedule;
  RescheduleWidget({required this.isReschedule});
  TextEditingController descrtiptionController = TextEditingController();
  final keyForm = GlobalKey<FormState>();
  String? from;
  String? to;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: keyForm,
        child: Column(
          children: [
            isReschedule == true
                ? Row(
                  children: [
                    Expanded(
                      child: DateTimeTextFieldPicker(
                        hintText: strings.select,
                        title: strings.from,
                        onTap: (date) {},
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: DateTimeTextFieldPicker(
                        hintText: strings.select,
                        title: strings.to,
                        onTap: (date) {},
                      ),
                    ),
                  ],
                )
                : BottomSheetTextFieldRectangle(
                  title: strings.status,

                  hintText: strings.select,
                  isScrollControlled: true,
                  setSearch: false,
                  items: [],
                  onSelectItem: (items) async {},
                ),
            if (isReschedule == true) SizedBox(height: 16),
            BuildTextFieldItem(
              title: strings.description,
              hintText: strings.description,
              controller: descrtiptionController,
              keyboardType: TextInputType.text,
              minLines: 3,
            ),
            SizedBox(height: 16),
            RowButtons(
              textCancelButton: strings.cancel,
              onCancel: () => Navigator.pop(context),
              onSave: () {
                if (keyForm.currentState!.validate()) {
                  if (from == null || to == null) {
                    showErrorDialog(strings.select_date_from_to, context);
                  } else {}
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
