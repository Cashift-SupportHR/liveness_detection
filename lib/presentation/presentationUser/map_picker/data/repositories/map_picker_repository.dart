import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../widgets/map_picker_item.dart';
import '../../widgets/map_prediction.dart';
import '../datasource/map_picker_provider.dart';

@injectable
class MapPickerRepository {
  final MapPickerAPI _api;

  MapPickerRepository(this._api);

  Future<List<MapPrediction>> fetchPlacesAutocomplete(String input) async {
    final response = await _api.fetchPlacesAutocomplete(input);
    return response;
  }

  Future<MapPickerItem> fetchPlaceDetails(String placeId) async {
    final response = await _api.fetchPlaceDetails(placeId);
    return response;
  }
}
