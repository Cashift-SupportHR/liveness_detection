import 'package:json_annotation/json_annotation.dart'; 

part 'add_maintenance_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddMaintenanceDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'faultsMaintenanceTypeId')
  int? faultsMaintenanceTypeId;
  @JsonKey(name: 'scheduleEmployeeWorkId')
  int? scheduleEmployeeWorkId;
  @JsonKey(name: 'freeLanceId')
  int? freeLanceId;

  AddMaintenanceDto({this.id, this.description, this.projectId, this.companyId, this.shiftId, this.faultsMaintenanceTypeId, this.scheduleEmployeeWorkId, this.freeLanceId});

   factory AddMaintenanceDto.fromJson(Map<String, dynamic> json) => _$AddMaintenanceDtoFromJson(json);

   Map<String, dynamic> toJson() => _$AddMaintenanceDtoToJson(this);
}

