import 'package:json_annotation/json_annotation.dart'; 

part 'filter_vehicle_zone_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class FilterVehicleZoneParams {
  @JsonKey(name: 'ProjectId')
  int? projectId;
  @JsonKey(name: 'ShiftId')
  int? shiftId;

  FilterVehicleZoneParams({this.projectId, this.shiftId});

   factory FilterVehicleZoneParams.fromJson(Map<String, dynamic> json) => _$FilterVehicleZoneParamsFromJson(json);

   Map<String, dynamic> toJson() => _$FilterVehicleZoneParamsToJson(this);
}

