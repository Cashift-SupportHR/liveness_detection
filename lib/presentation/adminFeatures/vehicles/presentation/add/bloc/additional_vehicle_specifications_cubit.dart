import 'package:injectable/injectable.dart';

import '../../../../../../core/bloc/base_cubit.dart';
import '../../../../../presentationUser/common/stream_data_state.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../data/models/vehicle_image_params.dart';
import '../../../data/repositories/vehicles_repository.dart';

@injectable
class AdditionalVehicleSpecificationsCubit extends BaseCubit {
  final VehiclesRepository _repository;

  AdditionalVehicleSpecificationsCubit(
      this._repository);

  void fetchAllaData() {
    executeEmitterData(() => _repository.fetchVehiclesImagesFaces());
  }

  void addVehicleImages(VehicleImageParams params) {
   executeEmitterListener(() => _repository.addVehicleImages(params));
  }
}
