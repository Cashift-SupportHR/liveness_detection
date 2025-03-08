// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) => Resume(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      whatsAppNumber: json['whatsAppNumber'] as String?,
      cityId: json['cityId'] as int?,
      birthDateHijri: json['birthDateHijri'] as String?,
      idNumber: json['idNumber'] as String?,
      birthDateString: json['birthDateString'] as String?,
      qualificationId: json['qualificationData'] as int?,
      length: json['length'] as int?,
      wieght: json['wieght'] as int?,
      englishLevel: json['englishLevelId'] as int?,
      computerLevel: json['computerLevelId'] as int?,
      idBank: json['idBank'] as String?,
      gender: json['gender'] as bool?,
      name: json['nameAr'] as String?,
      email: json['email'] as String?,
      jobs: (json['listOfJob'] as List<dynamic>?)
          ?.map((e) => JobItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentSituation: json['currentSituation'] as int?,
      qualificationName: json['qualificationName'] as String?,
      isHijri: json['isHijri'] as bool?,
      haveInterView: json['haveInterView'] as bool?,
      districtId: json['districtId'] as int?,
      favourateHours: json['favourateHours'] as int?,
      timeWorkId: json['timeWorkId'] as int?,
    )
      ..cityName = json['cityName'] as String?
      ..qualificationDataName = json['qualificationDataName'] as String?
      ..englishLevelName = json['englishLevelName'] as String?
      ..computerLevelName = json['computerLevelName'] as String?
      ..genderName = json['genderName'] as String?;

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'nameAr': instance.name,
      'email': instance.email,
      'whatsAppNumber': instance.whatsAppNumber,
      'cityId': instance.cityId,
      'cityName': instance.cityName,
      'idNumber': instance.idNumber,
      'birthDateString': instance.birthDateString,
      'birthDateHijri': instance.birthDateHijri,
      'qualificationData': instance.qualificationId,
      'currentSituation': instance.currentSituation,
      'qualificationDataName': instance.qualificationDataName,
      'qualificationName': instance.qualificationName,
      'length': instance.length,
      'wieght': instance.wieght,
      'englishLevelId': instance.englishLevel,
      'computerLevelId': instance.computerLevel,
      'englishLevelName': instance.englishLevelName,
      'computerLevelName': instance.computerLevelName,
      'idBank': instance.idBank,
      'genderName': instance.genderName,
      'gender': instance.gender,
      'listOfJob': instance.jobs,
      'isHijri': instance.isHijri,
      'haveInterView': instance.haveInterView,
      'districtId': instance.districtId,
      'favourateHours': instance.favourateHours,
      'timeWorkId': instance.timeWorkId,
    };
