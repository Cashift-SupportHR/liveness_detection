import 'package:json_annotation/json_annotation.dart'; 

part 'free_lance_info.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FreeLanceInfo {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'isAssign')
  bool? isAssign;

  FreeLanceInfo({this.id, this.name, this.phoneNumber, this.isAssign});

   factory FreeLanceInfo.fromJson(Map<String, dynamic> json) => _$FreeLanceInfoFromJson(json);

   Map<String, dynamic> toJson() => _$FreeLanceInfoToJson(this);
}

