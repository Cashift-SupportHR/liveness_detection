import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../utils/app_icons.dart';
import '../../../../presentationUser/resources/constants.dart';
import '../../../../shared/components/index.dart';

class UserRequestTermsBottomSheet extends BaseStatelessWidget {
  final Function()? onAccept;

  UserRequestTermsBottomSheet({super.key, this.onAccept});

  @override
  Widget build(BuildContext context) {
    StreamStateInitial<bool> isAcceptStream = StreamStateInitial();
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          DecoratedBox(
            decoration: Decorations.boxDecorationBorder(radius: 0),
            child: Column(
              children: [],
            ),
          ),
          CheckBoxTermsAndConditions(
            onChanged: (value) {
              isAcceptStream.setData(value ?? false);
            },
          ),
          StreamBuilder<bool>(
            stream: isAcceptStream.stream,
            builder: (context, snapshot) {
              return RowButtons(
                margin: EdgeInsets.symmetric(vertical: 18),
                textSaveButton: strings.confirm_button,
                textCancelButton: strings.cancel,
                onSave: snapshot.data == true
                    ? () {
                        onAccept?.call();
                      }
                    : null,
                onCancel: () => Navigator.pop(context),
              );
            },
          ),
        ],
      ),
    );
  }
}
