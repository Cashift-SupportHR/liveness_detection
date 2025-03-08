import 'package:json_annotation/json_annotation.dart'; 

part 'pledge_generalization_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class PledgeGeneralizationDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'logo')
  String? logo;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'subTitle')
  String? subTitle;
  @JsonKey(name: 'clearanceText')
  String? clearanceText;
  @JsonKey(name: 'statusText')
  String? statusText;
  @JsonKey(name: 'clearanceDate')
  String? clearanceDate;
  @JsonKey(name: 'hasAction')
  bool? hasAction;
  @JsonKey(name: 'confirmMessage')
  String? confirmMessage;

  PledgeGeneralizationDto({this.id, this.logo, this.title, this.subTitle, this.clearanceText, this.statusText, this.clearanceDate, this.hasAction, this.confirmMessage});

   factory PledgeGeneralizationDto.fromJson(Map<String, dynamic> json) => _$PledgeGeneralizationDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PledgeGeneralizationDtoToJson(this);
}

