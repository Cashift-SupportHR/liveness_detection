import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'change_phone_number_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ChangePhoneNumberParams {
  @JsonKey(name: 'FreeLanceInfoId')
  int? freeLanceInfoId;
  @JsonKey(name: 'NewPhoneNumber')
  String? newPhoneNumber;
  @JsonKey(name: 'AttachmentFile')
  @FileJsonConverter()
  File? attachmentFile;
  @JsonKey(name: 'NotificationType')
  int? notificationType;

  ChangePhoneNumberParams({this.freeLanceInfoId, this.newPhoneNumber, this.attachmentFile, this.notificationType});

   factory ChangePhoneNumberParams.fromJson(Map<String, dynamic> json) => _$ChangePhoneNumberParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ChangePhoneNumberParamsToJson(this);
}

class FileJsonConverter extends JsonConverter<File, String> {
  const FileJsonConverter();

  @override
  File fromJson(String json) {
    return File(json);
  }

  @override
  String toJson(File object) {
    return object.path;
  }
}

