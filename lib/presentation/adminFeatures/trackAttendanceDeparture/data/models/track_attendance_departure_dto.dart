import 'package:json_annotation/json_annotation.dart'; 

part 'track_attendance_departure_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TrackAttendanceDepartureDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'startDate')
  String? startDate;
  @JsonKey(name: 'endDate')
  String? endDate;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'freelancerId')
  int? freelancerId;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'freelancerPhone')
  String? freelancerPhone;

  TrackAttendanceDepartureDto({this.id, this.startDate, this.endDate, this.status, this.freelancerId, this.freelancerName, this.freelancerPhone});

   factory TrackAttendanceDepartureDto.fromJson(Map<String, dynamic> json) => _$TrackAttendanceDepartureDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TrackAttendanceDepartureDtoToJson(this);
}

