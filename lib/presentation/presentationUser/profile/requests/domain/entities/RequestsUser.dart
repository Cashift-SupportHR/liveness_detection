import '../../data/models/requests_user_dto.dart';

class RequestsUser {
  RequestsUser({
      this.id, 
      this.cashifterRequestTypeId, 
      this.cashifterRequestTypeName, 
      this.oldPhoneNumber, 
      this.newPhoneNumber, 
      this.attachmentDocument, 
      this.attachmentDocumentType, 
      this.description, 
      this.rejectReason, 
      this.cashifterRequestStatusId, 
      this.cashifterRequestStatusName, 
      this.shiftAdminUserId, 
      this.hrAdminUserId,
      this.cashifterName,
      this.projectName,
      this.shiftName,
  });


  int? id;
  int? cashifterRequestTypeId;
  String? cashifterRequestTypeName;
  String? oldPhoneNumber;
  String? newPhoneNumber;
  String? attachmentDocument;
  String? attachmentDocumentType;
  String? description;
  String? rejectReason;
  int? cashifterRequestStatusId;
  String? cashifterRequestStatusName;
  String? shiftAdminUserId;
  String? hrAdminUserId;
  String? cashifterName;
  String? projectName;
  String? shiftName;


  factory RequestsUser.fromDto(RequestsUserDto json) {
    return RequestsUser(

        id: json.id,
        cashifterRequestTypeId: json.cashifterRequestTypeId,
      cashifterRequestTypeName: json.cashifterRequestTypeName,
      oldPhoneNumber: json.oldPhoneNumber,
      newPhoneNumber: json.newPhoneNumber,
      attachmentDocument: json.attachmentDocument,
      attachmentDocumentType: json.attachmentDocumentType,
      description: json.description,
      rejectReason: json.rejectReason,
      cashifterRequestStatusId: json.cashifterRequestStatusId,
      cashifterRequestStatusName: json.cashifterRequestStatusName,
      shiftAdminUserId: json.shiftAdminUserId,
      hrAdminUserId: json.hrAdminUserId,
      cashifterName: json.cashifterName,
      projectName: json.projectName,
      shiftName: json.shiftName,
    );
  }

}