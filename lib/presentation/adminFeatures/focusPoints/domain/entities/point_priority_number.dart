

import '../../data/models/point_priority_number_dto.dart';

class PointPriorityNumber {
  int? id;
  String? name;

  PointPriorityNumber({this.id, this.name});

   factory PointPriorityNumber.fromDto(PointPriorityNumberDto json){
     return PointPriorityNumber(
       id: json.id,
       name: json.name,
     );
   }


}

