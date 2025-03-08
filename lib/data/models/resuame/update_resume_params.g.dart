// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_resume_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateResumeParams _$UpdateResumeParamsFromJson(Map<String, dynamic> json) =>
    UpdateResumeParams(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cityId: json['cityId'] as int?,
      otherCity: json['otherCity'] as String?,
      idNumber: json['idNumber'] as String?,
      birthDate: json['birthDate'] as String?,
      englishLevel: json['englishLevel'] as int?,
      computerLevel: json['computerLevel'] as int?,
      email: json['email'] as String?,
      gender: json['gender'] as bool?,
      currentSituation: json['currentSituation'] as int?,
      qualificationData: json['qualificationData'] as int?,
      qualificationName: json['qualificationName'] as String?,
      listOfJob:
          (json['listOfJob'] as List<dynamic>?)?.map((e) => e as int).toList(),
      isHijri: json['isHijri'] as bool?,
      length: json['length'] as int?,
      weight: json['wieght'] as int?,
      districtId: json['districtId'] as int?,
      favourateHours: json['favourateHours'] as int?,
      timeWorkId: json['timeWorkId'] as int?,
    );

Map<String, dynamic> _$UpdateResumeParamsToJson(UpdateResumeParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cityId': instance.cityId,
      'otherCity': instance.otherCity,
      'idNumber': instance.idNumber,
      'birthDate': instance.birthDate,
      'englishLevel': instance.englishLevel,
      'computerLevel': instance.computerLevel,
      'email': instance.email,
      'gender': instance.gender,
      'currentSituation': instance.currentSituation,
      'qualificationData': instance.qualificationData,
      'qualificationName': instance.qualificationName,
      'listOfJob': instance.listOfJob,
      'isHijri': instance.isHijri,
      'length': instance.length,
      'wieght': instance.weight,
      'districtId': instance.districtId,
      'favourateHours': instance.favourateHours,
      'timeWorkId': instance.timeWorkId,
    };
