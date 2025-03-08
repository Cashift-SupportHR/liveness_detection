import 'package:json_annotation/json_annotation.dart'; 

part 'add_new_user_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddNewUserParams {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'roleId')
  String? roleId;
  @JsonKey(name: 'level')
  int? level;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'listProjects')
  List<int>? listProjects;
  @JsonKey(name: 'listShifts')
  List<int>? listShifts;
  @JsonKey(name: 'listBrand')
  List<int>? listBrand;
  @JsonKey(name: 'listArea')
  List<String>? listArea;

  AddNewUserParams({this.id,   this.phoneNumber,  this.roleId, this.companyId, this.listProjects, this.listShifts, this.listBrand, this.level, this.listArea});

   factory AddNewUserParams.fromJson(Map<String, dynamic> json) => _$AddNewUserParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddNewUserParamsToJson(this);
}

