import 'package:json_annotation/json_annotation.dart'; 

part 'job_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class JobDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'jobName')
  String? jobName;

  JobDto({this.id, this.jobName});

   factory JobDto.fromJson(Map<String, dynamic> json) => _$JobDtoFromJson(json);

   Map<String, dynamic> toJson() => _$JobDtoToJson(this);
}

