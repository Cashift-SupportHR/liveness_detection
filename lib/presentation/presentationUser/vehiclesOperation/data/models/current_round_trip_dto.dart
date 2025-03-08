import 'package:json_annotation/json_annotation.dart';

import '../../../../adminFeatures/areapolygones/data/models/add_vehicle_zone_params.dart';

part 'current_round_trip_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CurrentRoundTripDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehiclesZoneId')
  int? vehiclesZoneId;
  @JsonKey(name: 'vehiclesZoneName')
  String? vehiclesZoneName;
  @JsonKey(name: 'numberOfViolations')
  int? numberOfViolations;
  @JsonKey(name: 'roundTypeId')
  int? roundTypeId;
  @JsonKey(name: 'roundTypeName')
  String? roundTypeName;
  @JsonKey(name: 'isAllowToTrackTime')
  bool? isAllowToTrackTime;
  @JsonKey(name: 'startRound')
  String? startRound;
  @JsonKey(name: 'latlngs')
  List<VehicleZoneLatLng>? latlngs;
  @JsonKey(name: 'roundTypeCode')
  String? roundTypeCode;
  @JsonKey(name: 'isRequiredPubup')
  bool? isRequiredPubup;
  @JsonKey(name: 'pubupMessage')
  String? pubupMessage;
  @JsonKey(name: 'stationLatitue')
  double? stationLatitue;
  @JsonKey(name: 'stationLongtude')
  double? stationLongtude;

  CurrentRoundTripDto(
      {this.id,
      this.stationLongtude,
      this.stationLatitue,
      this.pubupMessage,
      this.isRequiredPubup,
      this.roundTypeCode,
      this.vehiclesZoneId,
      this.vehiclesZoneName,
      this.numberOfViolations,
      this.roundTypeId,
      this.roundTypeName,
      this.isAllowToTrackTime,
      this.startRound,
      this.latlngs});

  factory CurrentRoundTripDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentRoundTripDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentRoundTripDtoToJson(this);
}

