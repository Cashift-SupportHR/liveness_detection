import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_component_handover_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleComponentHandoverDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehicleComponentId')
  int? vehicleComponentId;
  @JsonKey(name: 'vehicleComponentName')
  String? vehicleComponentName;
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'componentStatus')
  bool? componentStatus;
  @JsonKey(name: 'componentStatusName')
  String? componentStatusName;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'issueDescription')
  String? issueDescription;
  @JsonKey(name: 'attachmentPath')
  String? attachmentPath;

  VehicleComponentHandoverDto({this.id, this.vehicleComponentId, this.vehicleComponentName, this.vehicleHandoverId, this.componentStatus, this.componentStatusName, this.image, this.issueDescription, this.attachmentPath});

   factory VehicleComponentHandoverDto.fromJson(Map<String, dynamic> json) => _$VehicleComponentHandoverDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleComponentHandoverDtoToJson(this);
}

