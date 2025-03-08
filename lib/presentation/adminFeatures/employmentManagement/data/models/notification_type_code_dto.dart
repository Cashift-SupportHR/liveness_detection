import 'package:json_annotation/json_annotation.dart'; 

part 'notification_type_code_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class NotificationTypeCodeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  NotificationTypeCodeDto({this.id, this.name});

   factory NotificationTypeCodeDto.fromJson(Map<String, dynamic> json) => _$NotificationTypeCodeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$NotificationTypeCodeDtoToJson(this);
}

