import 'package:json_annotation/json_annotation.dart';

part 'insurances_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class InsurancesDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'insuranceImagePath')
  String? insuranceImagePath;
  @JsonKey(name: 'insuranceNumber')
  String? insuranceNumber;
  @JsonKey(name: 'insuranceProvider')
  String? insuranceProvider;
  @JsonKey(name: 'insuranceExpiryDate')
  String? insuranceExpiryDate;
  @JsonKey(name: 'insuranceImage')
  String? insuranceImage;
  @JsonKey(name: 'vehicleInsuranceTypeName')
  String? vehicleInsuranceTypeName;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'vehicleInsuranceTypeId')
  int? vehicleInsuranceTypeId;

  InsurancesDto(
      {this.id,
      this.insuranceImagePath,
      this.vehicleInsuranceTypeName,
      this.insuranceNumber,
      this.insuranceProvider,
      this.insuranceExpiryDate,
      this.insuranceImage,
      this.vehicleId,
      this.vehicleInsuranceTypeId});

  factory InsurancesDto.fromJson(Map<String, dynamic> json) =>
      _$InsurancesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InsurancesDtoToJson(this);
}
