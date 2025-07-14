import 'package:dio/dio.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftapp/config.dart';
import 'package:uuid/uuid.dart';

import '../../widgets/map_picker_item.dart';
import '../../widgets/map_prediction.dart';


@Injectable()
class MapPickerAPI {
  MapPickerAPI();

  Dio dio = Dio();

  Future<List<MapPrediction>> fetchPlacesAutocomplete(String input) async {
    try {
      Response response = await fetchLocationData(input);
      List<MapPrediction> data = response.data['predictions']
          .map<MapPrediction>((item) => MapPrediction.fromJson(item)).toList();
     return data;
    } catch (e) {
      print('fetchPlacesAutocomplete error $e');
      throw e;
    }
  }

  Future<Response> fetchLocationData(String input) async {
    String sessionToken = Uuid().v4();
    Map<String, dynamic> queryParams = {
      'key': Config.GOOGLE_API_KEY,
      'input': input,
      'sessiontoken': sessionToken,
    };
    Response response = await dio.get('https://maps.googleapis.com/maps/api/place/autocomplete/json',
      queryParameters: queryParams,
    );
    print('fetchLocationData response ${response.data}');
    return response;
  }

  Future<MapPickerItem> fetchPlaceDetails(String placeId) async {
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
      return pickerItem;
    } catch (e) {
      throw e;
    }
  }

}
