import 'package:json_annotation/json_annotation.dart'; 

part 'custody_vehicle.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CustodyVehicle {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'imagePath')
  String? imagePath;

  CustodyVehicle({this.id, this.name, this.imagePath});

   factory CustodyVehicle.fromJson(Map<String, dynamic> json) => _$CustodyVehicleFromJson(json);

   Map<String, dynamic> toJson() => _$CustodyVehicleToJson(this);
}

