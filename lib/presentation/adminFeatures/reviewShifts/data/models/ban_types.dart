import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/shared/data/models/value_item.dart';

part 'ban_types.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class BanTypes {
  @JsonKey(name: 'description')
  final  String? description;
  @JsonKey(name: 'listBlockType')
  final  List<ValueItem>? listBlockType;

  BanTypes({this.description, this.listBlockType});

   factory BanTypes.fromJson(Map<String, dynamic> json) => _$BanTypesFromJson(json);

   Map<String, dynamic> toJson() => _$BanTypesToJson(this);
}



