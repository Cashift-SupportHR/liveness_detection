import '../../data/models/vehicle_image_face_dto.dart';

class VehicleImageFace {
  int? id;
  String? name;
  String? imageFace;

  VehicleImageFace({this.id, this.name, this.imageFace});

  factory VehicleImageFace.fromJson(VehicleImageFaceDto json) =>
      VehicleImageFace(
        id: json.id,
        name: json.name,
        imageFace: json.imageFace,
      );

  static List<VehicleImageFace> fromListDto(List<VehicleImageFaceDto> data) {
    return data.map((e) => VehicleImageFace.fromJson(e)).toList();
  }
}
