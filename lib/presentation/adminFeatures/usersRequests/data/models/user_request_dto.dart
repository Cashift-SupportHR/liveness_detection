import 'package:json_annotation/json_annotation.dart'; 

part 'user_request_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class UserRequestDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'cashifterRequestTypeId')
  int? cashifterRequestTypeId;
  @JsonKey(name: 'cashifterRequestTypeName')
  String? cashifterRequestTypeName;
  @JsonKey(name: 'oldPhoneNumber')
  String? oldPhoneNumber;
  @JsonKey(name: 'newPhoneNumber')
  String? newPhoneNumber;
  @JsonKey(name: 'attachmentDocument')
  String? attachmentDocument;
  @JsonKey(name: 'attachmentDocumentType')
  String? attachmentDocumentType;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'rejectReason')
  String? rejectReason;
  @JsonKey(name: 'cashifterRequestStatusId')
  int? cashifterRequestStatusId;
  @JsonKey(name: 'cashifterRequestStatusName')
  String? cashifterRequestStatusName;
  @JsonKey(name: 'shiftAdminUserId')
  String? shiftAdminUserId;
  @JsonKey(name: 'hrAdminUserId')
  String? hrAdminUserId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'cashiftName')
  String? cashiftName;
  @JsonKey(name: 'imagePath')
  String? imagePath;

  UserRequestDto({this.id, this.cashifterRequestTypeId, this.cashifterRequestTypeName, this.oldPhoneNumber, this.newPhoneNumber, this.attachmentDocument, this.attachmentDocumentType, this.description, this.rejectReason, this.cashifterRequestStatusId, this.cashifterRequestStatusName, this.shiftAdminUserId, this.hrAdminUserId, this.companyId, this.projectId, this.projectName, this.shiftId, this.shiftName, this.cashiftName, this.imagePath});

   factory UserRequestDto.fromJson(Map<String, dynamic> json) => _$UserRequestDtoFromJson(json);

   Map<String, dynamic> toJson() => _$UserRequestDtoToJson(this);
}

