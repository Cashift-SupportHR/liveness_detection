
import '../../data/models/user_area_dto.dart';

class UserArea {
  String? id;
  String? name;

  UserArea({this.id, this.name});

   factory UserArea.fromDto(UserAreaDto json){
      return UserArea(
        id: json.id,
        name: json.name
      );
   }
}

