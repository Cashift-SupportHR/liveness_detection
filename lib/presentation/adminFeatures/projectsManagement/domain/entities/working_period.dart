
import '../../data/models/working_period_dto.dart';

class WorkingPeriod {
  int? id;
  String? name;
  String? startTime;

  WorkingPeriod({this.id, this.name, this.startTime});

   factory WorkingPeriod.fromDto(WorkingPeriodDto json){
      return WorkingPeriod(
        id: json.id,
        name: json.name,
        startTime: json.startTime,
      );
   }
}

