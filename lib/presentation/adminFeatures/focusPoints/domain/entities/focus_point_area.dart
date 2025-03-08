

import '../../data/models/focus_point_area_dto.dart';

class FocusPointArea {
  int? id;
  String? name;

  FocusPointArea({this.id, this.name});

   factory FocusPointArea.fromDto(FocusPointAreaDto json) {
    return FocusPointArea(
      id: json.id,
      name: json.name,
    );
   }
}

