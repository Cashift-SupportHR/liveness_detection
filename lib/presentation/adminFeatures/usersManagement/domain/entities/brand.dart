
import '../../data/models/brand_dto.dart';

class Brand{
  int? id;
  String? name;

  Brand({this.id, this.name});

   factory Brand.fromDto(BrandDto json){
     return Brand(
       id: json.id,
       name: json.name,
     );
   }

}

