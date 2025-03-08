import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';

import '../../../../../presentationUser/common/common_state.dart';
import '../../../data/repositories/track_attendance_departure_repository.dart';
import '../../../domain/entities/track_attendance_departure.dart';

@Injectable()
class TrackAttendanceDepartureCubit extends BaseCubit {
  final TrackAttendanceDepartureRepository repository;

  TrackAttendanceDepartureCubit(this.repository);

  StreamStateInitial<List<TrackAttendanceDeparture>?>
      trackAttendanceDepartureStream = StreamStateInitial();
  List<TrackAttendanceDeparture> listTrackAttendanceDeparture = [];

  void fetchInitialData() {
    executeBuilder(() {
      return repository.fetchTrackAttendanceDepartureRequests();
    }, onSuccess: (value) {
      listTrackAttendanceDeparture = value;
      emit(Initialized<List<TrackAttendanceDeparture>>(
          data: listTrackAttendanceDeparture));
    });
  }

  void searchByText(String value) {
    try {
      List<TrackAttendanceDeparture> usersSearched =
          listTrackAttendanceDeparture;
      if (value.isNotEmpty) {
        usersSearched = listTrackAttendanceDeparture
            .where((user) =>
                (user.id != null && user.id!.toString().contains(value)) ||
                (user.freelancerName != null &&
                    user.freelancerName!.contains(value)) ||
                (user.freelancerId != null &&
                    user.freelancerId!.toString().contains(value)) ||
                (user.freelancerPhone != null &&
                    user.freelancerPhone!.contains(value)))
            .toList();
      }
      trackAttendanceDepartureStream.setData(usersSearched);
    } on Exception catch (e) {
      print(e);
      trackAttendanceDepartureStream.setError(e);
    }
  }
}
