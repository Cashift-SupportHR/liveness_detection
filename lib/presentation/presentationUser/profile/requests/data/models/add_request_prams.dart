import 'package:json_annotation/json_annotation.dart'; 

part 'add_request_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddRequestPrams {
  @JsonKey(name: 'cashifterRequestTypeId')
  int? cashifterRequestTypeId;
  @JsonKey(name: 'newPhoneNumber')
  String? newPhoneNumber;

  AddRequestPrams({this.cashifterRequestTypeId, this.newPhoneNumber});

   factory AddRequestPrams.fromJson(Map<String, dynamic> json) => _$AddRequestPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddRequestPramsToJson(this);
}

