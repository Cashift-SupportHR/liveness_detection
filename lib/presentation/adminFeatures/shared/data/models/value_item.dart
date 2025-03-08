import 'package:json_annotation/json_annotation.dart'; 

part 'value_item.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ValueItem {
  @JsonKey(name: 'value')
  final  int? value;
  @JsonKey(name: 'name')
  final  String? name;

  ValueItem({this.value, this.name});

   factory ValueItem.fromJson(Map<String, dynamic> json) => _$ValueItemFromJson(json);

   Map<String, dynamic> toJson() => _$ValueItemToJson(this);
}

