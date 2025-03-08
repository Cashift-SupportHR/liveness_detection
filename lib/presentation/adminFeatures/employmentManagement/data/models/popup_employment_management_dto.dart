import 'package:json_annotation/json_annotation.dart'; 

part 'popup_employment_management_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class PopupEmploymentManagementDto {
  @JsonKey(name: 'block')
  BlockDto? blockDto;
  @JsonKey(name: 'face')
  FaceDto? faceDto;
  @JsonKey(name: 'update')
  UpdateDto? updateDto;

  PopupEmploymentManagementDto({this.blockDto, this.faceDto, this.updateDto});

   factory PopupEmploymentManagementDto.fromJson(Map<String, dynamic> json) => _$PopupEmploymentManagementDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PopupEmploymentManagementDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class BlockDto {
  @JsonKey(name: 'headerLabel')
  String? headerLabel;
  @JsonKey(name: 'detailsLabel')
  String? detailsLabel;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'canelButtonName')
  String? canelButtonName;
  @JsonKey(name: 'confirmButtonName')
  String? confirmButtonName;

  BlockDto({this.headerLabel, this.detailsLabel, this.icon, this.canelButtonName, this.confirmButtonName});

   factory BlockDto.fromJson(Map<String, dynamic> json) => _$BlockDtoFromJson(json);

   Map<String, dynamic> toJson() => _$BlockDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class FaceDto {
  @JsonKey(name: 'headerLabel')
  String? headerLabel;
  @JsonKey(name: 'detailsLabel')
  String? detailsLabel;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'canelButtonName')
  String? canelButtonName;
  @JsonKey(name: 'confirmButtonName')
  String? confirmButtonName;

  FaceDto({this.headerLabel, this.detailsLabel, this.icon, this.canelButtonName, this.confirmButtonName});

   factory FaceDto.fromJson(Map<String, dynamic> json) => _$FaceDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FaceDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class UpdateDto {
  @JsonKey(name: 'headerLabel')
  String? headerLabel;
  @JsonKey(name: 'detailsLabel')
  String? detailsLabel;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'canelButtonName')
  String? canelButtonName;
  @JsonKey(name: 'confirmButtonName')
  String? confirmButtonName;

  UpdateDto({this.headerLabel, this.detailsLabel, this.icon, this.canelButtonName, this.confirmButtonName});

   factory UpdateDto.fromJson(Map<String, dynamic> json) => _$UpdateDtoFromJson(json);

   Map<String, dynamic> toJson() => _$UpdateDtoToJson(this);
}

