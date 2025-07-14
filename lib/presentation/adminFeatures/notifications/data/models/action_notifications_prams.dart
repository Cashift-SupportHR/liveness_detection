import 'package:json_annotation/json_annotation.dart'; 

part 'action_notifications_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ActionNotificationsPrams {
  @JsonKey(name: 'notificationId')
  int? notificationId;
  @JsonKey(name: 'action')
  String? action;

  ActionNotificationsPrams({this.notificationId, this.action});

   factory ActionNotificationsPrams.fromJson(Map<String, dynamic> json) => _$ActionNotificationsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$ActionNotificationsPramsToJson(this);
}

