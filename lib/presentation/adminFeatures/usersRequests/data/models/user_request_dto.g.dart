// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequestDto _$UserRequestDtoFromJson(Map<String, dynamic> json) =>
    UserRequestDto(
      id: json['id'] as int?,
      cashifterRequestTypeId: json['cashifterRequestTypeId'] as int?,
      cashifterRequestTypeName: json['cashifterRequestTypeName'] as String?,
      oldPhoneNumber: json['oldPhoneNumber'] as String?,
      newPhoneNumber: json['newPhoneNumber'] as String?,
      attachmentDocument: json['attachmentDocument'] as String?,
      attachmentDocumentType: json['attachmentDocumentType'] as String?,
      description: json['description'] as String?,
      rejectReason: json['rejectReason'] as String?,
      cashifterRequestStatusId: json['cashifterRequestStatusId'] as int?,
      cashifterRequestStatusName: json['cashifterRequestStatusName'] as String?,
      shiftAdminUserId: json['shiftAdminUserId'] as String?,
      hrAdminUserId: json['hrAdminUserId'] as String?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      shiftId: json['shiftId'] as int?,
      shiftName: json['shiftName'] as String?,
      cashiftName: json['cashiftName'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$UserRequestDtoToJson(UserRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cashifterRequestTypeId': instance.cashifterRequestTypeId,
      'cashifterRequestTypeName': instance.cashifterRequestTypeName,
      'oldPhoneNumber': instance.oldPhoneNumber,
      'newPhoneNumber': instance.newPhoneNumber,
      'attachmentDocument': instance.attachmentDocument,
      'attachmentDocumentType': instance.attachmentDocumentType,
      'description': instance.description,
      'rejectReason': instance.rejectReason,
      'cashifterRequestStatusId': instance.cashifterRequestStatusId,
      'cashifterRequestStatusName': instance.cashifterRequestStatusName,
      'shiftAdminUserId': instance.shiftAdminUserId,
      'hrAdminUserId': instance.hrAdminUserId,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'shiftId': instance.shiftId,
      'shiftName': instance.shiftName,
      'cashiftName': instance.cashiftName,
      'imagePath': instance.imagePath,
    };
