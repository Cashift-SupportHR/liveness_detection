import 'package:json_annotation/json_annotation.dart'; 

part 'emp_map_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmpMapDto {
  @JsonKey(name: 'malesCount')
  int? malesCount;
  @JsonKey(name: 'femalesCount')
  int? femalesCount;
  @JsonKey(name: 'freeLncerLocations')
  List<FreeLncerLocation>? freeLncerLocations;

  EmpMapDto({this.malesCount, this.femalesCount, this.freeLncerLocations});

   factory EmpMapDto.fromJson(Map<String, dynamic> json) => _$EmpMapDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmpMapDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class FreeLncerLocation {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'cityId')
  int? cityId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lng')
  double? lng;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'icone')
  String? icone;
  @JsonKey(name: 'gender')
  bool? gender;
  @JsonKey(name: 'isActive')
  bool? isActive;

  FreeLncerLocation({this.id, this.cityId, this.jobId, this.lat, this.lng, this.name, this.icone, this.gender, this.isActive});

   factory FreeLncerLocation.fromJson(Map<String, dynamic> json) => _$FreeLncerLocationFromJson(json);

   Map<String, dynamic> toJson() => _$FreeLncerLocationToJson(this);
}

