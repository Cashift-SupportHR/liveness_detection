import 'package:json_annotation/json_annotation.dart'; 

part 'add_covenant_focus_point_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddCovenantFocusPointParams {
  @JsonKey(name: 'focusPointId')
  int? focusPointId;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'deviceId')
  int? deviceId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'deviceNumber')
  String? deviceNumber;
  @JsonKey(name: 'deviceTypeName')
  String? deviceTypeName;

  AddCovenantFocusPointParams({this.id, this.focusPointId, this.deviceId, this.name, this.deviceNumber ,this.deviceTypeName});

   factory AddCovenantFocusPointParams.fromJson(Map<String, dynamic> json) => _$AddCovenantFocusPointParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddCovenantFocusPointParamsToJson(this);
}

