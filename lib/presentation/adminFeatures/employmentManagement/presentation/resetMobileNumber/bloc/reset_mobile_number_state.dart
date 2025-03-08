import '../../../../../presentationUser/common/common_state.dart';
import '../../../domain/entities/notification_type_code.dart';
import '../../../domain/entities/reset_phone_data.dart';

class ResetMobileNumberState extends CommonStateFBuilder{
  ResetPhoneData resetPhoneData;
  List<NotificationTypeCode> notificationTypeCodes;

  ResetMobileNumberState({
    required this.resetPhoneData,
    required this.notificationTypeCodes,
  });
}