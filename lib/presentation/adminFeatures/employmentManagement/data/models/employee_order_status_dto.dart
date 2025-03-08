import 'package:json_annotation/json_annotation.dart';

import '../../../../shared/models/common_list_item_dto.dart';
import '../../../projectsManagement/data/models/working_period_dto.dart';

part 'employee_order_status_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class EmployeeOrderStatusDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'isAccept')
  int? isAccept;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'descriptionConnect')
  String? descriptionConnect;
  @JsonKey(name: 'isAllow')
  bool? isAllow;
  @JsonKey(name: 'listProject')
  List<CommonListItemDto>? listProject;
  @JsonKey(name: 'listShift')
  List<WorkingPeriodDto>? listShift;
  @JsonKey(name: 'isAcceptedForAllProject')
  int? isAcceptedForAllProject;
  @JsonKey(name: 'isAcceptedForAllShift')
  int? isAcceptedForAllShift;
  @JsonKey(name: 'successAprovedLevel')
  int? isShowDescription;
  @JsonKey(name: 'isShowDescription')
  int? successAprovedLevel;

  EmployeeOrderStatusDto({this.id, this.isAccept, this.description, this.descriptionConnect, this.isAllow, this.listProject, this.listShift, this.isAcceptedForAllProject, this.isAcceptedForAllShift, this.successAprovedLevel, this.isShowDescription});

  factory EmployeeOrderStatusDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeOrderStatusDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeOrderStatusDtoToJson(this);
}
