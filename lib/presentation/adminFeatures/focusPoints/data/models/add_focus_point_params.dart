import 'package:json_annotation/json_annotation.dart'; 

part 'add_focus_point_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class AddFocusPointParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'focusPointsTypeId')
  int? focusPointsTypeId;
  @JsonKey(name: 'focusPointsPriorityId')
  int? focusPointsPriorityId;
  @JsonKey(name: 'focusPointName')
  String? focusPointName;
  @JsonKey(name: 'freeLanceType')
  int? freeLanceType;
  @JsonKey(name: 'focusPointId')
  String? focusPointId;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'radius')
  String? radius;
  @JsonKey(name: 'focusPointsAreaId')
  int? focusPointsAreaId;
  @JsonKey(name: 'coverageBreak')
  int? coverageBreak;
  @JsonKey(name: 'focusPointsTransactionId')
  int? focusPointsTransactionId;
  @JsonKey(name: 'listShift')
  List<int>? listShift;

  AddFocusPointParams({this.id, this.projectId, this.focusPointsTypeId, this.focusPointsPriorityId, this.focusPointName, this.freeLanceType, this.focusPointId, this.latitude, this.longtude, this.radius, this.focusPointsAreaId, this.focusPointsTransactionId, this.listShift,this.coverageBreak});

   factory AddFocusPointParams.fromJson(Map<String, dynamic> json) => _$AddFocusPointParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddFocusPointParamsToJson(this);
}

