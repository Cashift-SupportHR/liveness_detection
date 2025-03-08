
import '../../data/models/job_uniform_type_dto.dart';

class JobUniformType {
  int? id;
  String? name;

  JobUniformType({this.id, this.name});

   factory JobUniformType.fromDto(JobUniformTypeDto json){
      return JobUniformType(
        id: json.id,
        name: json.name
      );
   }
}

