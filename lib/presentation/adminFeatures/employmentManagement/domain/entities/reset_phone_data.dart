
import '../../data/models/reset_phone_data_dto.dart';

class ResetPhoneData {
  int? freeLanceId;
  String? pageHeaderLabel;
  String? subHeaderLabel;
  String? inputPhoneNumberLabel;
  String? detailsLabel;
  String? icon;
  String? uploadLabel;
  String? uploadIcon;
  String? button;

  ResetPhoneData({this.freeLanceId, this.pageHeaderLabel, this.subHeaderLabel, this.inputPhoneNumberLabel, this.detailsLabel, this.icon, this.uploadLabel, this.uploadIcon, this.button});

   factory ResetPhoneData.fromDto(ResetPhoneDataDto json) {
     return ResetPhoneData(
       freeLanceId: json.freeLanceId,
       pageHeaderLabel: json.pageHeaderLabel,
       subHeaderLabel: json.subHeaderLabel,
       inputPhoneNumberLabel: json.inputPhoneNumberLabel,
       detailsLabel: json.detailsLabel,
       icon: json.icon,
       uploadLabel: json.uploadLabel,
       uploadIcon: json.uploadIcon,
       button: json.button,
     );
   }
}

