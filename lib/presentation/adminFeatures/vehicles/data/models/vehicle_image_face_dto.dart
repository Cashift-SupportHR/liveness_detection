import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_image_face_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleImageFaceDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'imageFace')
  String? imageFace;

  VehicleImageFaceDto({this.id, this.name, this.imageFace});

   factory VehicleImageFaceDto.fromJson(Map<String, dynamic> json) => _$VehicleImageFaceDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleImageFaceDtoToJson(this);
}

