import 'package:json_annotation/json_annotation.dart';

part 'custody_handover_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CustodyHandoverDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehicleCustodyId')
  int? vehicleCustodyId;
  @JsonKey(name: 'vehicleCustodyName')
  String? vehicleCustodyName;
  @JsonKey(name: 'custodyHandoverId')
  int? custodyHandoverId;
  @JsonKey(name: 'custodyStatus')
  bool? custodyStatus;
  @JsonKey(name: 'custodyStatusName')
  String? custodyStatusName;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'issueDescription')
  String? issueDescription;
  @JsonKey(name: 'attachmentPath')
  String? attachmentPath;

  CustodyHandoverDto({this.id, this.vehicleCustodyId, this.vehicleCustodyName, this.custodyHandoverId, this.custodyStatus, this.custodyStatusName, this.image, this.issueDescription, this.attachmentPath});

  factory CustodyHandoverDto.fromJson(Map<String, dynamic> json) => _$CustodyHandoverDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustodyHandoverDtoToJson(this);
}

