
import '../../data/models/covenant_dto.dart';

class Covenant {
  int? id;
  String? name;
  int? projectId;
  int? priorityNumber;
  List? attendanceList;

  Covenant({this.id, this.name, this.projectId, this.priorityNumber, this.attendanceList});

   factory Covenant.fromJson(CovenantDto json){
      return Covenant(
        id: json.id,
        name: json.name,
        projectId: json.projectId,
        priorityNumber: json.priorityNumber,
        attendanceList: json.attendanceList,
      );
   }
}

