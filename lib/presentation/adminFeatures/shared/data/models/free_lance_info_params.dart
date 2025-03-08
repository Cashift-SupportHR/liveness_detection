import 'package:json_annotation/json_annotation.dart'; 

part 'free_lance_info_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FreeLanceInfoParams {
  @JsonKey(name: 'isWeb')
  bool? isWeb;
  @JsonKey(name: 'oppId')
  int? oppId;
  @JsonKey(name: 'freeLanceId')
  int? freeLanceId;

  FreeLanceInfoParams({this.isWeb, this.oppId, this.freeLanceId});

   factory FreeLanceInfoParams.fromJson(Map<String, dynamic> json) => _$FreeLanceInfoParamsFromJson(json);

   Map<String, dynamic> toJson() => _$FreeLanceInfoParamsToJson(this);
}

