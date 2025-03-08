import 'package:json_annotation/json_annotation.dart'; 

part 'reject_user_request_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RejectUserRequestParams {
  @JsonKey(name: 'statusId')
  int? statusId;
  @JsonKey(name: 'reason')
  String? reason;
  @JsonKey(name: 'id')
  int? id;

  RejectUserRequestParams({this.statusId, this.reason, this.id});

   factory RejectUserRequestParams.fromJson(Map<String, dynamic> json) => _$RejectUserRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$RejectUserRequestParamsToJson(this);
}

