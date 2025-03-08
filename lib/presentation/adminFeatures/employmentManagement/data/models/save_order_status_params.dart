import 'package:json_annotation/json_annotation.dart'; 

part 'save_order_status_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class SaveOrderStatusParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'isAccept')
  int? isAccept;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'descriptionConnect')
  String? descriptionConnect;
  @JsonKey(name: 'freeLanceId')
  int? freeLanceId;
  @JsonKey(name: 'isAllow')
  bool? isAllow;
  @JsonKey(name: 'listProject')
  List<ListProject>? listProject;
  @JsonKey(name: 'listShift')
  List<ListShift>? listShift;
  @JsonKey(name: 'isAcceptedForAllProject')
  int? isAcceptedForAllProject;
  @JsonKey(name: 'isAcceptedForAllShift')
  int? isAcceptedForAllShift;
  @JsonKey(name: 'successAprovedLevel')
  int? successAprovedLevel;

  SaveOrderStatusParams({this.id, this.isAccept, this.description, this.descriptionConnect, this.freeLanceId, this.isAllow, this.listProject, this.listShift, this.isAcceptedForAllProject, this.isAcceptedForAllShift, this.successAprovedLevel});

   factory SaveOrderStatusParams.fromJson(Map<String, dynamic> json) => _$SaveOrderStatusParamsFromJson(json);

   Map<String, dynamic> toJson() => _$SaveOrderStatusParamsToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class ListProject {
  @JsonKey(name: 'projectId')
  int? projectId;

  ListProject({this.projectId});

   factory ListProject.fromJson(Map<String, dynamic> json) => _$ListProjectFromJson(json);

   Map<String, dynamic> toJson() => _$ListProjectToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class ListShift {
  @JsonKey(name: 'shiftHeadId')
  int? shiftHeadId;

  ListShift({this.shiftHeadId});

   factory ListShift.fromJson(Map<String, dynamic> json) => _$ListShiftFromJson(json);

   Map<String, dynamic> toJson() => _$ListShiftToJson(this);
}

