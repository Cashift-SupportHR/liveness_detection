import 'package:json_annotation/json_annotation.dart'; 

part 'confirm_reques_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ConfirmRequesPrams {
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'newPhoneNumber')
  String? newPhoneNumber;

  ConfirmRequesPrams({this.code, this.newPhoneNumber});

   factory ConfirmRequesPrams.fromJson(Map<String, dynamic> json) => _$ConfirmRequesPramsFromJson(json);

   Map<String, dynamic> toJson() => _$ConfirmRequesPramsToJson(this);
}

