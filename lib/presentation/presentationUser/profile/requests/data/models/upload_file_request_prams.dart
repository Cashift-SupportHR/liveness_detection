import 'package:json_annotation/json_annotation.dart'; 

part 'upload_file_request_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class UploadFileRequestPrams {
  @JsonKey(name: 'NewPhoneNumber')
  String? NewPhoneNumber;
  @JsonKey(name: 'CashifterRequestTypeId')
  int? CashifterRequestTypeId;

  UploadFileRequestPrams({this.NewPhoneNumber, this.CashifterRequestTypeId});

   factory UploadFileRequestPrams.fromJson(Map<String, dynamic> json) => _$UploadFileRequestPramsFromJson(json);

   Map<String, dynamic> toJson() => _$UploadFileRequestPramsToJson(this);
}

