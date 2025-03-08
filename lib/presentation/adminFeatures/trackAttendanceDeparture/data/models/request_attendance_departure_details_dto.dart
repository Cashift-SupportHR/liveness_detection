import 'package:json_annotation/json_annotation.dart'; 

part 'request_attendance_departure_details_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RequestAttendanceDepartureDetailsDto {
  @JsonKey(name: 'freelancerProfileImage')
  String? freelancerProfileImage;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'freelancerPhoneNumber')
  String? freelancerPhoneNumber;
  @JsonKey(name: 'freelancerIdNumber')
  String? freelancerIdNumber;
  @JsonKey(name: 'freelancerNationality')
  String? freelancerNationality;
  @JsonKey(name: 'trackFaceRecognitionDetailsList')
  List<TrackFaceRecognitionDetailsListDto>? trackFaceRecognitionDetailsList;

  RequestAttendanceDepartureDetailsDto({this.freelancerProfileImage, this.freelancerName, this.freelancerPhoneNumber, this.freelancerIdNumber, this.freelancerNationality, this.trackFaceRecognitionDetailsList});

   factory RequestAttendanceDepartureDetailsDto.fromJson(Map<String, dynamic> json) => _$RequestAttendanceDepartureDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$RequestAttendanceDepartureDetailsDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class TrackFaceRecognitionDetailsListDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'trackFaceRecognitionRequestId')
  int? trackFaceRecognitionRequestId;
  @JsonKey(name: 'faceRecognitionPath')
  String? faceRecognitionPath;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'addedDate')
  String? addedDate;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'notes')
  String? notes;

  TrackFaceRecognitionDetailsListDto({this.id, this.trackFaceRecognitionRequestId, this.faceRecognitionPath, this.projectId, this.projectName, this.shiftId, this.shiftName, this.addedDate, this.status, this.notes});

   factory TrackFaceRecognitionDetailsListDto.fromJson(Map<String, dynamic> json) => _$TrackFaceRecognitionDetailsListDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TrackFaceRecognitionDetailsListDtoToJson(this);
}

