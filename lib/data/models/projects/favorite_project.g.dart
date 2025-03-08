// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteProject _$FavoriteProjectFromJson(Map<String, dynamic> json) =>
    FavoriteProject(
      id: json['id'] as int,
      projectId: json['projectId'] as int,
      projectName: json['projectName'] as String,
    );

Map<String, dynamic> _$FavoriteProjectToJson(FavoriteProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
    };
