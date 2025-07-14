import 'package:json_annotation/json_annotation.dart'; 

part 'action_follow_up_up_maintenance_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ActionFollowUpUpMaintenancePrams {
  @JsonKey(name: 'faultsMaintenanceId')
  int? faultsMaintenanceId;
  @JsonKey(name: 'importantLevel')
  int? importantLevel;
  @JsonKey(name: 'actionDescription')
  String? actionDescription;

  ActionFollowUpUpMaintenancePrams({this.faultsMaintenanceId, this.importantLevel, this.actionDescription});

   factory ActionFollowUpUpMaintenancePrams.fromJson(Map<String, dynamic> json) => _$ActionFollowUpUpMaintenancePramsFromJson(json);

   Map<String, dynamic> toJson() => _$ActionFollowUpUpMaintenancePramsToJson(this);
}

