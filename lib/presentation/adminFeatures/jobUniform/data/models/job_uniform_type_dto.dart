import 'package:json_annotation/json_annotation.dart'; 

part 'job_uniform_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class JobUniformTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  JobUniformTypeDto({this.id, this.name});

   factory JobUniformTypeDto.fromJson(Map<String, dynamic> json) => _$JobUniformTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$JobUniformTypeDtoToJson(this);
}

