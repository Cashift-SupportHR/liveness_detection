import 'package:json_annotation/json_annotation.dart'; 

part 'requests_user_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RequestsUserDto {
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
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'cashifterName')
  String? cashifterName;

  RequestsUserDto({this.id,this.cashifterName,this.projectName,this.shiftName, this.cashifterRequestTypeId, this.cashifterRequestTypeName, this.oldPhoneNumber, this.newPhoneNumber, this.attachmentDocument, this.attachmentDocumentType, this.description, this.rejectReason, this.cashifterRequestStatusId, this.cashifterRequestStatusName, this.shiftAdminUserId, this.hrAdminUserId});

   factory RequestsUserDto.fromJson(Map<String, dynamic> json) => _$RequestsUserDtoFromJson(json);

   Map<String, dynamic> toJson() => _$RequestsUserDtoToJson(this);
}

