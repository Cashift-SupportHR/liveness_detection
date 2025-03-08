import 'package:json_annotation/json_annotation.dart'; 

part 'create_vehicle_handover_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CreateVehicleHandoverDto {
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'freelancerInfoId')
  int? freelancerInfoId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'isComplete')
  bool? isComplete;

  CreateVehicleHandoverDto({this.vehicleId, this.freelancerInfoId, this.companyId, this.projectId, this.shiftId, this.id, this.isComplete});

   factory CreateVehicleHandoverDto.fromJson(Map<String, dynamic> json) => _$CreateVehicleHandoverDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CreateVehicleHandoverDtoToJson(this);
}

