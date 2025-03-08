import 'package:json_annotation/json_annotation.dart';

part 'work_hazard_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class WorkHazardDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'hazardPriorityLevelName')
  String? hazardPriorityLevelName;
  @JsonKey(name: 'hazardPriorityLevelId')
  int? hazardPriorityLevelId;
  @JsonKey(name: 'hazardTypeName')
  String? hazardTypeName;
  @JsonKey(name: 'hazardTypeId')
  int? hazardTypeId;
  @JsonKey(name: 'hazardSatusName')
  String? hazardStatusName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'submissionDate')
  String? submissionDate;
  @JsonKey(name: 'hazardDocuments')
  List<WorkHazardImageDto>? hazardDocuments;

  WorkHazardDto(
      {this.id,
      this.hazardPriorityLevelName,
      this.hazardPriorityLevelId,
      this.hazardTypeName,
      this.hazardTypeId,
      this.hazardStatusName,
      this.projectId,
      this.projectName,
      this.companyId,
      this.companyName,
      this.shiftId,
      this.shiftName,
      this.description,
      this.submissionDate,
      this.hazardDocuments,
      });

  factory WorkHazardDto.fromJson(Map<String, dynamic> json) =>
      _$WorkHazardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WorkHazardDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class WorkHazardImageDto {
  @JsonKey(name: 'path')
  String? path;

  WorkHazardImageDto({this.path});

  factory WorkHazardImageDto.fromJson(Map<String, dynamic> json) =>
      _$WorkHazardImageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WorkHazardImageDtoToJson(this);
}
