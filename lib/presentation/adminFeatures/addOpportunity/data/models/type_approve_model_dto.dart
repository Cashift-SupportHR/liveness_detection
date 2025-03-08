import 'package:json_annotation/json_annotation.dart'; 




part 'type_approve_model_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class TypeApproveModelDto {
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'typeApprove')
  List<TypeApproveDto>? typeApprove;

  TypeApproveModelDto({this.description, this.typeApprove});

   factory TypeApproveModelDto.fromJson(Map<String, dynamic> json) => _$TypeApproveModelDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TypeApproveModelDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class TypeApproveDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'type')
  bool? type;
  @JsonKey(name: 'description')
  String? description;


  TypeApproveDto({this.name, this.type, this.description});

   factory TypeApproveDto.fromJson(Map<String, dynamic> json) => _$TypeApproveDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TypeApproveDtoToJson(this);
}

