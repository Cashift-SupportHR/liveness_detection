import 'package:json_annotation/json_annotation.dart'; 

part 'reset_phone_data_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ResetPhoneDataDto {
  @JsonKey(name: 'freeLanceId')
  int? freeLanceId;
  @JsonKey(name: 'pageHeaderLabel')
  String? pageHeaderLabel;
  @JsonKey(name: 'subHeaderLabel')
  String? subHeaderLabel;
  @JsonKey(name: 'inputPhoneNumberLabel')
  String? inputPhoneNumberLabel;
  @JsonKey(name: 'detailsLabel')
  String? detailsLabel;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'uploadLabel')
  String? uploadLabel;
  @JsonKey(name: 'uploadIcon')
  String? uploadIcon;
  @JsonKey(name: 'button')
  String? button;

  ResetPhoneDataDto({this.freeLanceId, this.pageHeaderLabel, this.subHeaderLabel, this.inputPhoneNumberLabel, this.detailsLabel, this.icon, this.uploadLabel, this.uploadIcon, this.button});

   factory ResetPhoneDataDto.fromJson(Map<String, dynamic> json) => _$ResetPhoneDataDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ResetPhoneDataDtoToJson(this);
}

