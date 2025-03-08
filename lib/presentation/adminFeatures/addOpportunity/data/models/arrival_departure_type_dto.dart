import 'package:json_annotation/json_annotation.dart'; 

part 'arrival_departure_type_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ArrivalDepartureTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'icon')
  String? icon;

  ArrivalDepartureTypeDto({this.id, this.name, this.code, this.description, this.icon});

   factory ArrivalDepartureTypeDto.fromJson(Map<String, dynamic> json) => _$ArrivalDepartureTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ArrivalDepartureTypeDtoToJson(this);
}

