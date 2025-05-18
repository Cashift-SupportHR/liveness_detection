
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/domain/entities/receiveVehicle.dart';

class MainReceiveVehicleArg {
  MainReceiveVehicleArg({
    required this.isEdit,
    this.receiveVehicleData,
  });

  bool isEdit;
  ReceiveVehicleData? receiveVehicleData;
}
