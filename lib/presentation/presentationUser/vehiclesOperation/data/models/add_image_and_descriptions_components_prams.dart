import 'package:json_annotation/json_annotation.dart'; 

part 'add_image_and_descriptions_components_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddImageAndDescriptionsComponentsPrams {
  @JsonKey(name: 'IssueDescription')
  String? IssueDescription;
  @JsonKey(name: 'ComponentStatus')
  bool? ComponentStatus;
  @JsonKey(name: 'CustodyStatus')
  bool? custodyStatus;
  @JsonKey(name: 'VehicleComponentId')
  int? VehicleComponentId;
  @JsonKey(name: 'VehicleHandoverId')
  int? VehicleHandoverId;
  @JsonKey(name: 'VehicleCustodyId')
  int? VehicleCustodyId;

  AddImageAndDescriptionsComponentsPrams({this.IssueDescription, this.ComponentStatus, this.custodyStatus,this.VehicleComponentId, this.VehicleHandoverId, this.VehicleCustodyId});

   factory AddImageAndDescriptionsComponentsPrams.fromJson(Map<String, dynamic> json) => _$AddImageAndDescriptionsComponentsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddImageAndDescriptionsComponentsPramsToJson(this);
}

