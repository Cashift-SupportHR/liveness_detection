import 'package:json_annotation/json_annotation.dart'; 

part 'approve_job_request_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ApproveJobRequestParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'approve')
  bool? approve;
  @JsonKey(name: 'description')
  String? description;

  ApproveJobRequestParams({this.id, this.approve, this.description});

   factory ApproveJobRequestParams.fromJson(Map<String, dynamic> json) => _$ApproveJobRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ApproveJobRequestParamsToJson(this);
}

