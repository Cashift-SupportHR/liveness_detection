import '../../data/models/attachments_emp_dto.dart';

/// id : 1
/// requirementName : "المرفق الأول"
/// requirementAttachmentPath : ""
/// isAdded : false
/*
{
      "id": 0,
      "requirementName": "string",
      "requirementAttachmentPath": "string",
      "attachmentExtensionType": "string",
      "isAdded": true,
      "allowEdit": true,
      "rejectReason": "string"
    }
 */
class AttachmentsEmp {
  AttachmentsEmp({
    this.id,
    this.requirementName,
    this.requirementAttachmentPath,
    this.isAdded,
    this.attachmentExtensionType,
    this.allowEdit,
    this.rejectReason,
  });

  int? id;
  String? requirementName;
  String? requirementAttachmentPath;
  String? attachmentExtensionType;
  bool? isAdded;
  String? rejectReason;
  bool? allowEdit;

  factory AttachmentsEmp.fromDto(AttachmentsEmpDto json) {
    return AttachmentsEmp(
        id: json.id,
        allowEdit: json.allowEdit,
        rejectReason: json.rejectReason,
        requirementName: json.requirementName,
        attachmentExtensionType: json.attachmentExtensionType,
        isAdded: json.isAdded,
        requirementAttachmentPath: json.requirementAttachmentPath);
  }
}
