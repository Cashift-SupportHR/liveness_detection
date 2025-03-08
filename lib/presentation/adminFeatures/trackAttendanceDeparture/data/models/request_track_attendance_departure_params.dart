import 'package:json_annotation/json_annotation.dart';

part 'request_track_attendance_departure_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class RequestTrackAttendanceDepartureParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'freelancerId')
  int? freelancerId;
  @JsonKey(name: 'startDate')
  String? startDate;
  @JsonKey(name: 'endDate')
  String? endDate;

  RequestTrackAttendanceDepartureParams(
      {this.id,
      this.freelancerId,
      this.startDate,
      this.endDate,});

  factory RequestTrackAttendanceDepartureParams.fromJson(Map<String, dynamic> json) =>
      _$RequestTrackAttendanceDepartureParamsFromJson(json);

  Map<String, dynamic> toJson() => _$RequestTrackAttendanceDepartureParamsToJson(this);
}
