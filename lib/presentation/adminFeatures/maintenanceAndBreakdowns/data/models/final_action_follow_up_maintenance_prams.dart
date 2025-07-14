import 'package:json_annotation/json_annotation.dart'; 

part 'final_action_follow_up_maintenance_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FinalActionFollowUpMaintenancePrams {
  @JsonKey(name: 'faultsMaintenanceId')
  int? faultsMaintenanceId;
  @JsonKey(name: 'actionDescription')
  String? actionDescription;

  FinalActionFollowUpMaintenancePrams({this.faultsMaintenanceId, this.actionDescription});

   factory FinalActionFollowUpMaintenancePrams.fromJson(Map<String, dynamic> json) => _$FinalActionFollowUpMaintenancePramsFromJson(json);

   Map<String, dynamic> toJson() => _$FinalActionFollowUpMaintenancePramsToJson(this);
}

