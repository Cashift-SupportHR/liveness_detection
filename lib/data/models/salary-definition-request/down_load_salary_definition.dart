import 'package:json_annotation/json_annotation.dart'; 

part 'down_load_salary_definition.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class DownLoadSalaryDefinition {
  @JsonKey(name: 'fileAttachmentType')
  String? fileAttachmentType;
  @JsonKey(name: 'fileName')
  String? fileName;
  @JsonKey(name: 'fileAttachment')
  String? fileAttachment;

  DownLoadSalaryDefinition({this.fileAttachmentType, this.fileName, this.fileAttachment});

   factory DownLoadSalaryDefinition.fromJson(Map<String, dynamic> json) => _$DownLoadSalaryDefinitionFromJson(json);

   Map<String, dynamic> toJson() => _$DownLoadSalaryDefinitionToJson(this);
}

