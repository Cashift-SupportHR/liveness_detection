import 'package:json_annotation/json_annotation.dart'; 

part 'address.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Address {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'langitude')
  String? langitude;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'name')
  String? name;

  Address({this.id, this.langitude, this.latitude, this.details, this.name});

   factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

   Map<String, dynamic> toJson() => _$AddressToJson(this);
}

