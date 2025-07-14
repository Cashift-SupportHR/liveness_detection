import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/data/models/receive_vehicle_data_dto.dart';

part 'receive_vehicle_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ReceiveVehicleDto {
  @JsonKey(name: 'totalData')
  int? totalData;
  @JsonKey(name: 'pageSize')
  int? pageSize;
  @JsonKey(name: 'pageNumber')
  int? pageNumber;

  @JsonKey(name: 'vehicleComponentCustoHandOverViewModels')
  List<ReceiveVehicleDataDto>? receiveVehicleDataDto;

  ReceiveVehicleDto(
      {this.pageNumber,
      this.pageSize,
      this.totalData,
      this.receiveVehicleDataDto});

  factory ReceiveVehicleDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiveVehicleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiveVehicleDtoToJson(this);
}
