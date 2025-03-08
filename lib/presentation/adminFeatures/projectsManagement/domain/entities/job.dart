
import '../../data/models/job_dto.dart';

class Job {
  int? id;
  String? jobName;

  Job({this.id, this.jobName});

   factory Job.fromDto(JobDto json){
    return Job(
      id: json.id,
      jobName: json.jobName,
    );
   }
}

