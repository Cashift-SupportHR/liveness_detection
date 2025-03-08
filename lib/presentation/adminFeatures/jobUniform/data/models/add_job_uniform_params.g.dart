// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_job_uniform_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddJobUniformParams _$AddJobUniformParamsFromJson(Map<String, dynamic> json) =>
    AddJobUniformParams(
      id: json['Id'] as int?,
      companyId: json['companyId'] as int?,
      jobId: json['JobId'] as int?,
      description: json['Description'] as String?,
      jobUniformCategoryId: json['JobUniformCategoryId'] as int?,
      file: _$JsonConverterFromJson<String, File>(
          json['File'], const FileJsonConverter().fromJson),
    );

Map<String, dynamic> _$AddJobUniformParamsToJson(AddJobUniformParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Id', instance.id);
  val['JobId'] = instance.jobId;
  val['companyId'] = instance.companyId;
  writeNotNull('Description', instance.description);
  val['JobUniformCategoryId'] = instance.jobUniformCategoryId;
  writeNotNull(
      'File',
      _$JsonConverterToJson<String, File>(
          instance.file, const FileJsonConverter().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
