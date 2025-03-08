import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../data/repositories/track_attendance_departure_repository.dart';

@Injectable()
class TrackAttendanceDepartureDetailsCubit extends BaseCubit {
  final TrackAttendanceDepartureRepository repository;

  TrackAttendanceDepartureDetailsCubit(this.repository);

  void fetchTrackAttendanceDepartureRequestsDetails(int id) {
    executeEmitterData(() => repository.fetchTrackAttendanceDepartureRequestsDetails(id));
  }
}
