import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/presentation/receiveVehicle/details/bloc/receive_vehicle_details_state.dart';

import '../../../../../../../data/models/api_response.dart';
import '../../../../../../../data/models/salary-definition-request/down_load_salary_definition.dart';
import '../../../../../../adminFeatures/maintenanceAndBreakdowns/domain/entities/maintenance.dart';
import '../../../../../../adminFeatures/vehicles/domain/entities/vehicle_violation.dart';
import '../../../../../../shared/components/index.dart';
import '../../../../../common/common_state.dart';
import '../../../../../common/stream_data_state.dart';
import '../../../../data/models/download_vehicle_violation_picture_params.dart';
import '../../../../data/repositories/vehicles_operation_repository.dart';
import '../../../../domain/entities/driver_violation.dart';
import '../../../../domain/entities/vehicle_performance.dart';

@Injectable()
class ReceiveVehicleDetailsCubit extends BaseCubit {
  final ReceiveVehiclesRepository repository;
   ReceiveVehicleDetailsCubit(this.repository);

  StreamDataStateInitial<VehiclePerformance?> vehiclePerformanceStream =
      StreamDataStateInitial();
  StreamDataStateInitial<List<DriverViolation>?> driverViolations =
      StreamDataStateInitial();
  StreamDataStateInitial<List<ContractViolation>?> violationsFactory =
      StreamDataStateInitial();
  StreamDataStateInitial<List<Maintenance>?> maintenanceBreakdowns =
      StreamDataStateInitial();

  void fetchReceiveVehicleDetails(int id) {
    executeBuilder(
      () => repository.fetchReceiveVehicleDetails(id),
      onSuccess: (data) {
        emit(
          ReceiveVehicleDetailsState(
            details: data,
            driverViolations: driverViolations,
            maintenanceBreakdowns: maintenanceBreakdowns,
            vehiclePerformanceStream: vehiclePerformanceStream,
            violationsFactory: violationsFactory,
          ),
        );
      },
    );
  }

  void fetchVehiclePerformance(int id) {
    try {
      vehiclePerformanceStream.start();
      vehiclePerformanceStream.setFutureData(
        () => repository.fetchVehiclePerformance(id),
      );
    } catch (e) {
      vehiclePerformanceStream.setError(e);
    }
  }
  void fetchViolationsFactory(int roundTripId) {
    try {
      violationsFactory.start();
      violationsFactory.setFutureData(
        () =>  repository.fetchRoundViolation(roundTripId),
      );
    } catch (e) {
      violationsFactory.setError(e);
    }
  }
  void fetchRoundsMaintenance(int roundTripId) {
    try {
      maintenanceBreakdowns.start();
      maintenanceBreakdowns.setFutureData(
        () =>  repository.fetchRoundsMaintenance(roundTripId),
      );
    } catch (e) {
      maintenanceBreakdowns.setError(e);
    }
  }

  void fetchDriverViolations(int id) {
    try {
      driverViolations.start();
      driverViolations.setFutureData(
        () => repository.fetchDriverViolations(id),
      );
    } catch (e) {
      driverViolations.setError(e);
    }
  }

  void downloadVehicleViolationPicture(
    DownloadVehicleViolationPictureParams params,
  ) {
    executeListener(
      () => repository.downloadVehicleViolationPicture(params),
      onSuccess: (ApiResponse api) async {
        emit((SuccessStateListener(data: api.payload.toString())));
      },
    );
  }
}
