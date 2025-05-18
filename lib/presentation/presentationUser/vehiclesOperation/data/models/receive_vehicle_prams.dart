import 'package:json_annotation/json_annotation.dart'; 

part 'receive_vehicle_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ReceiveVehiclePrams {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'pageSize')
  int? pageSize;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'startDate',includeIfNull: false)
  String? startDate;
  @JsonKey(name: 'endDate',includeIfNull: false)
  String? endDate;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'isComplete')
  bool? isComplete;

  ReceiveVehiclePrams({this.page, this.pageSize, this.projectId, this.companyId, this.startDate, this.endDate, this.shiftId, this.isComplete});

   factory ReceiveVehiclePrams.fromJson(Map<String, dynamic> json) => _$ReceiveVehiclePramsFromJson(json);

   Map<String, dynamic> toJson() => _$ReceiveVehiclePramsToJson(this);
}

