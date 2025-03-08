import 'package:json_annotation/json_annotation.dart'; 

part 'attachments_emp_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AttachmentsEmpDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'requirementName')
  String? requirementName;
  @JsonKey(name: 'requirementAttachmentPath')
  String? requirementAttachmentPath;
  @JsonKey(name: 'attachmentExtensionType')
  String? attachmentExtensionType;
  @JsonKey(name: 'rejectReason')
  String? rejectReason;
  @JsonKey(name: 'isAdded')
  bool? isAdded;
  @JsonKey(name: 'allowEdit')
  bool? allowEdit;

  AttachmentsEmpDto({this.id,this.allowEdit,this.rejectReason, this.requirementName, this.attachmentExtensionType, this.requirementAttachmentPath, this.isAdded});

   factory AttachmentsEmpDto.fromJson(Map<String, dynamic> json) => _$AttachmentsEmpDtoFromJson(json);

   Map<String, dynamic> toJson() => _$AttachmentsEmpDtoToJson(this);
}

