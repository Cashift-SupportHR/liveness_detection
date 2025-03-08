import 'package:shiftapp/domain/entities/shared/date_formatter.dart';

import '../../data/models/receive_vehicle_dto.dart';
import 'custody_handover.dart';
import 'vehicle_component_handover.dart';

class ReceiveVehicle {
  ReceiveVehicle({
      this.id, 
      this.vehicleId, 
      this.vehicleBrand, 
      this.vehicleModel, 
      this.vehiclePlateNumber, 
      this.vehicleHandoverDate, 
      this.vehicleHandoverTime, 
      this.freelancerInfoId, 
      this.freelancerName, 
      this.vehicleImage, 
      this.handoverId,
      this.isComplete,
      this.vehiclesComponentsHandovers,
      this.vehiclesCustodiesHandovers,
  });


  int? id;
  int? handoverId;
  int? vehicleId;
  String? vehicleBrand;
  String? vehicleModel;
  String? vehiclePlateNumber;
  String? vehicleHandoverDate;
  String? vehicleHandoverTime;
  int? freelancerInfoId;
  String? freelancerName;
  String? vehicleImage;
  bool? isComplete;
  List<VehicleComponentHandover>? vehiclesComponentsHandovers;
  List<CustodyHandover>? vehiclesCustodiesHandovers;

  factory ReceiveVehicle.fromDto(ReceiveVehicleDto json) {
    return ReceiveVehicle(
      vehicleId: json.vehicleId,
      id: json.id,
      vehicleBrand: json.vehicleBrand,
      vehicleModel: json.vehicleModel,
      vehiclePlateNumber: json.vehiclePlateNumber,
      vehicleHandoverDate: json.vehicleHandoverDate,
      vehicleHandoverTime: json.vehicleHandoverTime,
      freelancerInfoId: json.freelancerInfoId,
      freelancerName: json.freelancerName,
      vehicleImage: json.vehicleImage,
      isComplete: json.isComplete,
      handoverId: json.id,
      vehiclesComponentsHandovers: VehicleComponentHandover.fromDtoList(json.vehiclesComponentsHandovers ?? []),
      vehiclesCustodiesHandovers: CustodyHandover.fromDtoList(json.vehiclesCustodiesHandovers ?? []),
    );
  }

  String get vehicleHandoverTimeFormatted => DateFormatter.repairApiTime(vehicleHandoverTime ?? '');
}