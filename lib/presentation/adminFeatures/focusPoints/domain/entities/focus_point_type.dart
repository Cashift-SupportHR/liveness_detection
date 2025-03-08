
import '../../data/models/focus_point_type_dto.dart';


class FocusPointType {
  int? id;
  String? name;

  FocusPointType({this.id, this.name});

   factory FocusPointType.fromJson(FocusPointTypeDto json){
     return FocusPointType(
        id: json.id,
        name: json.name,
     );
   }
}

