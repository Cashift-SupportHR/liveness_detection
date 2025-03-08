import 'package:json_annotation/json_annotation.dart'; 

part 'action_vehicle_receive_request_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ActionVehicleReceiveRequestParams {
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'scheduleEmployeeId')
  int? scheduleEmployeeId;
  @JsonKey(name: 'handoverId')
  int? handoverId;
  @JsonKey(name: 'issueDescriptionStatus')
  int? issueDescriptionStatus;
  @JsonKey(name: 'action')
  String? action;
  @JsonKey(name: 'type')
  String? type;

  ActionVehicleReceiveRequestParams({this.vehicleHandoverId, this.scheduleEmployeeId, this.handoverId, this.issueDescriptionStatus, this.action, this.type});

   factory ActionVehicleReceiveRequestParams.fromJson(Map<String, dynamic> json) => _$ActionVehicleReceiveRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ActionVehicleReceiveRequestParamsToJson(this);
}

