import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

import '../../../employmentManagement/data/models/change_phone_number_params.dart';

part 'add_job_uniform_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class AddJobUniformParams {
  @JsonKey(name: 'Id',includeIfNull: false)
  int? id;
  @JsonKey(name: 'JobId')
  int? jobId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'Description',includeIfNull: false)
  String? description;
  @JsonKey(name: 'JobUniformCategoryId')
  int? jobUniformCategoryId;
  @JsonKey(name: 'File',includeIfNull: false)
  @FileJsonConverter()
  File? file;


  AddJobUniformParams({this.id, this.companyId, this.jobId, this.description, this.jobUniformCategoryId, this.file});

   factory AddJobUniformParams.fromJson(Map<String, dynamic> json) => _$AddJobUniformParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddJobUniformParamsToJson(this);
}

