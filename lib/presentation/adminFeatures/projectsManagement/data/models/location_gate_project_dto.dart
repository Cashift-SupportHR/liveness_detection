import 'package:json_annotation/json_annotation.dart'; 

part 'location_gate_project_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class LocationGateProjectDto {
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'mainLocation')
  MainLocation? mainLocation;
  @JsonKey(name: 'projectCode')
  String? projectCode;
  @JsonKey(name: 'locationsProject')
  List<LocationsProject>? locationsProject;

  LocationGateProjectDto({this.companyName, this.projectName, this.mainLocation, this.projectCode, this.locationsProject});

   factory LocationGateProjectDto.fromJson(Map<String, dynamic> json) => _$LocationGateProjectDtoFromJson(json);

   Map<String, dynamic> toJson() => _$LocationGateProjectDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class MainLocation {
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longitude')
  String? longitude;

  MainLocation({this.latitude, this.longitude});

   factory MainLocation.fromJson(Map<String, dynamic> json) => _$MainLocationFromJson(json);

   Map<String, dynamic> toJson() => _$MainLocationToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class LocationsProject {
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longitude')
  String? longitude;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'locationProjectCode')
  String? locationProjectCode;
  @JsonKey(name: 'countOfEmployee')
  int? countOfEmployee;

  LocationsProject({this.latitude, this.longitude, this.name, this.locationProjectCode, this.countOfEmployee});

   factory LocationsProject.fromJson(Map<String, dynamic> json) => _$LocationsProjectFromJson(json);

   Map<String, dynamic> toJson() => _$LocationsProjectToJson(this);
}

