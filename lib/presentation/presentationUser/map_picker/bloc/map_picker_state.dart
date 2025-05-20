import '../../common/common_state.dart';
import '../widgets/map_picker_item.dart';
import '../widgets/map_prediction.dart';

class MapPickerState{
  StreamStateInitial<List<MapPrediction>?> predictionsSearchStream;
  StreamStateInitial<MapPickerItem?> placeDetailsStream;
  Function(String) onFetchPlaces;
  Function(String) onFetchPlaceDetails;

  MapPickerState({
    required this.predictionsSearchStream,
    required this.onFetchPlaces,
    required this.placeDetailsStream,
    required this.onFetchPlaceDetails
  });
}