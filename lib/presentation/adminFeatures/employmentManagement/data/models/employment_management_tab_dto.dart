import 'package:json_annotation/json_annotation.dart'; 

part 'employment_management_tab_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class EmploymentManagementTabDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'totalFreelance')
  int? totalFreelance;
  @JsonKey(name: 'successApprovedLevel')
  List<SuccessApprovedLevel>? successApprovedLevel;

  EmploymentManagementTabDto({this.id, this.name, this.totalFreelance, this.successApprovedLevel});

   factory EmploymentManagementTabDto.fromJson(Map<String, dynamic> json) => _$EmploymentManagementTabDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmploymentManagementTabDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class SuccessApprovedLevel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'totalFreelance')
  int? totalFreelance;
  @JsonKey(name: 'isDefault')
  bool? isDefault;

  SuccessApprovedLevel({this.id, this.name, this.totalFreelance, this.isDefault});

  factory SuccessApprovedLevel.fromJson(Map<String, dynamic> json) => _$SuccessApprovedLevelFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessApprovedLevelToJson(this);
}
