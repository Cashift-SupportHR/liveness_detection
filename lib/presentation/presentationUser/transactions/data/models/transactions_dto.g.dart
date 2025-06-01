// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsDto _$TransactionsDtoFromJson(Map<String, dynamic> json) =>
    TransactionsDto(
      id: (json['id'] as num?)?.toInt(),
      destination: json['destination'] as String?,
      freelancerProfileImage: json['freelancerProfileImage'] as String?,
      freelancerPhoneNumber: json['freelancerPhoneNumber'] as String?,
      description: json['description'] as String?,
      startDateTime: json['startDateTime'] as String?,
      endDateTime: json['endDateTime'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusName: json['statusName'] as String?,
      finalSummary: json['finalSummary'] as String?,
      freelancerId: (json['freelancerId'] as num?)?.toInt(),
      freelancerName: json['freelancerName'] as String?,
    );

Map<String, dynamic> _$TransactionsDtoToJson(TransactionsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'destination': instance.destination,
      'description': instance.description,
      'startDateTime': instance.startDateTime,
      'endDateTime': instance.endDateTime,
      'status': instance.status,
      'statusName': instance.statusName,
      'finalSummary': instance.finalSummary,
      'freelancerId': instance.freelancerId,
      'freelancerName': instance.freelancerName,
      'freelancerPhoneNumber': instance.freelancerPhoneNumber,
      'freelancerProfileImage': instance.freelancerProfileImage,
    };
