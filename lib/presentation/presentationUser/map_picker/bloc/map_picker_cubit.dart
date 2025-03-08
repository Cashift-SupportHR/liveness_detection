import 'package:dio/dio.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftapp/config.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import 'package:uuid/uuid.dart';

import '../widgets/map_picker_item.dart';
import '../widgets/map_prediction.dart';

@Injectable()
class MapPickerCubit extends BaseCubit {
  MapPickerCubit();

  StreamStateInitial<List<MapPrediction>?> predictionsSearchStream = StreamStateInitial();
  StreamStateInitial<MapPickerItem?> placeDetailsStream = StreamStateInitial();

  Future<void> fetchPlacesAutocomplete(String input) async {
    predictionsSearchStream.setData(null);
    try {
      Response response = await fetchLocationData(input);
      List<MapPrediction> data = response.data['predictions']
          .map<MapPrediction>((item) => MapPrediction.fromJson(item)).toList();
      predictionsSearchStream.setData(data);
    } catch (e) {
      predictionsSearchStream.setError(e);
      throw Exception('Failed to fetch places autocomplete');
    }
  }

  Future<Response> fetchLocationData(String input) async {
    Dio dio = Dio();

    String sessionToken = Uuid().v4();
    Map<String, dynamic> queryParams = {
      'key': Config.GOOGLE_API_KEY,
      'input': input,
      // 'language': Get.locale!.languageCode,
      // 'location': '${item.geometry!.location!.lat},${item.geometry!.location!.lng}',
 //     'radius': 150,
     'sessiontoken': sessionToken,
    };
    Response response = await dio.get(
      'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      queryParameters: queryParams,
    );
    print(response.data);
    return response;
  }

  Future<void> fetchPlaceDetails(String placeId) async {
    placeDetailsStream.setData(null);
    Dio dio = Dio();
    Map<String, dynamic> queryParams = {
      'key': Config.GOOGLE_API_KEY,
    //  'location': '-33.866489%2C-151.1958561',
      'place_id': placeId,
      'language': Get.locale!.languageCode,
    };
    Response response = await dio.get(
      'https://maps.googleapis.com/maps/api/place/details/json',
      queryParameters: queryParams,
    );
    try {

      print('response ${response.data['result']}');
      MapPickerItem pickerItem = MapPickerItem.fromJson(response.data['result']);
      print('responseJson ${pickerItem.toJson()}');

      placeDetailsStream.setData(pickerItem);

    } catch (e) {
      print(e);
      placeDetailsStream.setError(e);
      throw Exception('Failed to decode place');
    }
  }
}
