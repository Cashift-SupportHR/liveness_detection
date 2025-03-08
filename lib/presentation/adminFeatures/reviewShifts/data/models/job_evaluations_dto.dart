import 'package:json_annotation/json_annotation.dart'; 

part 'job_evaluations_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class JobEvaluationsDto {
  @JsonKey(name: 'id')
  final  int? id;
  @JsonKey(name: 'title')
  final  String? title;
  @JsonKey(name: 'value')
  int? value;

  JobEvaluationsDto({this.id, this.title, this.value});

   factory JobEvaluationsDto.fromJson(Map<String, dynamic> json) => _$JobEvaluationsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$JobEvaluationsDtoToJson(this);
}

