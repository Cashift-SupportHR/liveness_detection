
import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../data/repositories/map_picker_repository.dart';
import '../widgets/map_picker_item.dart';
import '../widgets/map_prediction.dart';
import 'map_picker_state.dart';

@Injectable()
class MapPickerCubit extends BaseCubit {
  final MapPickerRepository _repository;

  MapPickerCubit(this._repository);

  StreamStateInitial<List<MapPrediction>?> predictionsSearchStream =
      StreamStateInitial();
  StreamStateInitial<MapPickerItem?> placeDetailsStream = StreamStateInitial();

  void fetchInitialData(){
    emit(Initialized<MapPickerState>(
      data: MapPickerState(
        predictionsSearchStream: predictionsSearchStream,
        placeDetailsStream: placeDetailsStream,
        onFetchPlaces: (String input) => fetchPlacesAutocomplete(input),
        onFetchPlaceDetails: (String placeId) => fetchPlaceDetails(placeId),
      ),
    ));
  }

  Future<void> fetchPlacesAutocomplete(String input) async {
    predictionsSearchStream.setData(null);
    try {
      List<MapPrediction> data = await _repository.fetchPlacesAutocomplete(
        input,
      );
      predictionsSearchStream.setData(data);
    } catch (e) {
      predictionsSearchStream.setError(e);
      throw Exception('Failed to fetch places autocomplete');
    }
  }

  Future<void> fetchPlaceDetails(String placeId) async {
    placeDetailsStream.setData(null);
    try {
      MapPickerItem pickerItem = await _repository.fetchPlaceDetails(placeId);
      placeDetailsStream.setData(pickerItem);
    } catch (e) {
      print(e);
      placeDetailsStream.setError(e);
      throw Exception('Failed to decode place');
    }
  }
}
