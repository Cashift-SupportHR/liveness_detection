

import '../../../../../common/common_state.dart';
import '../../../../../common/stream_data_state.dart';
import '../../../../domain/entities/driver_violation.dart';
import '../../../../domain/entities/receive_vehicle_details.dart';
import '../../../../domain/entities/vehicle_performance.dart';

class ReceiveVehicleDetailsState extends CommonStateFBuilder {
  final ReceiveVehicleDetails details;
  final StreamDataState<VehiclePerformance?> vehiclePerformanceStream;
  final StreamDataState<List<DriverViolation>?> driverViolations;

  ReceiveVehicleDetailsState({
    required this.details,
    required this.vehiclePerformanceStream,
    required this.driverViolations,
  });
}
