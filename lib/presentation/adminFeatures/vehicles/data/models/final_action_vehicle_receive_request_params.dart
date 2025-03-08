import 'package:json_annotation/json_annotation.dart'; 

part 'final_action_vehicle_receive_request_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class FinalActionVehicleReceiveRequestParams {
  @JsonKey(name: 'vehicleComponentHandOverId')
  int? vehicleComponentHandOverId;
  @JsonKey(name: 'handOverType')
  String? handOverType;
  @JsonKey(name: 'actionTakenDescription')
  String? actionTakenDescription;

  FinalActionVehicleReceiveRequestParams({this.vehicleComponentHandOverId, this.handOverType, this.actionTakenDescription});

   factory FinalActionVehicleReceiveRequestParams.fromJson(Map<String, dynamic> json) => _$FinalActionVehicleReceiveRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$FinalActionVehicleReceiveRequestParamsToJson(this);
}

