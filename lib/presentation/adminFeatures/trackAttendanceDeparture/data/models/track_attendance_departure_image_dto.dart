import 'package:json_annotation/json_annotation.dart'; 

part 'track_attendance_departure_image_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TrackAttendanceDepartureImageDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'trackFaceRecognitionRequestId')
  int? trackFaceRecognitionRequestId;
  @JsonKey(name: 'faceRecognitionPath')
  String? faceRecognitionPath;
  @JsonKey(name: 'addedDate')
  String? addedDate;

  TrackAttendanceDepartureImageDto({this.id, this.trackFaceRecognitionRequestId, this.faceRecognitionPath, this.addedDate});

   factory TrackAttendanceDepartureImageDto.fromJson(Map<String, dynamic> json) => _$TrackAttendanceDepartureImageDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TrackAttendanceDepartureImageDtoToJson(this);
}

