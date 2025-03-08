
import '../../data/models/city_dto.dart';

class City {
  int? id;
  String? cityName;

  City({this.id, this.cityName});

   factory City.fromDto(CityDto json) {
    return City(
      id: json.id,
      cityName: json.cityName,
    );
   }
}

