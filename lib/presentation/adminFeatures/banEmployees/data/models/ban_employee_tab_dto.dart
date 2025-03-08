import 'package:json_annotation/json_annotation.dart';

part 'ban_employee_tab_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class BanEmployeeTabDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'total')
  int? total;

  BanEmployeeTabDto({this.name, this.total});

  factory BanEmployeeTabDto.fromJson(Map<String, dynamic> json) => _$BanEmployeeTabDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BanEmployeeTabDtoToJson(this);
}
