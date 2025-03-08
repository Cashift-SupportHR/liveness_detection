
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../presentationUser/common/stream_data_state.dart';
import '../../../../../shared/models/common_list_item.dart';
import '../../../../focusPoints/domain/entities/shifts_by_project.dart';
import '../../../../usersManagement/domain/entities/index.dart';
import '../../../domain/entities/vehicle_zone.dart';

class FilterVehiclesZoneState extends CommonStateFListener {
  final List<Company> companies;
  final StreamDataState<List<CommonListItem>?> projectsStream;
  final StreamDataState<List<ShiftsByProject>?> shiftsStream;
  final StreamDataStateInitial<List<VehicleZone>?> vehiclesZoneAreasByProjectIdStream;

  FilterVehiclesZoneState({
    required this.companies,
    required this.projectsStream,
    required this.shiftsStream,
    required this.vehiclesZoneAreasByProjectIdStream,
  });
}
