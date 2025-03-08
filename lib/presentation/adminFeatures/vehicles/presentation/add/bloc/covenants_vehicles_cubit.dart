import 'package:injectable/injectable.dart';

import '../../../../../../core/bloc/base_cubit.dart';
import '../../../data/models/add_covenant_vehicle_params.dart';
import '../../../data/repositories/vehicles_repository.dart';

@injectable
class CovenantsVehiclesCubit extends BaseCubit {
  final VehiclesRepository _repository;

  CovenantsVehiclesCubit(
      this._repository);

  void fetchAllaData(int id) {
    executeEmitterData(() => _repository.fetchCovenants(id));
  }

  void addEditCovenant(AddCovenantVehicleParams params) {
   executeEmitterListener(() => params.id == 0 ? _repository.addCovenant(params) : _repository.editCovenant(params));
  }

  void deleteCovenant(int id) {
    executeEmitterListener(() => _repository.deleteCovenant(id));
  }
}
