
import '../../data/models/notification_type_code_dto.dart';

class NotificationTypeCode {
  int? id;
  String? name;

  NotificationTypeCode({this.id, this.name});

   factory NotificationTypeCode.fromDto(NotificationTypeCodeDto json) {
      return NotificationTypeCode(
        id: json.id,
        name: json.name,
      );
   }
}

