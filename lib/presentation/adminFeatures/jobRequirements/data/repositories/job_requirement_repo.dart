import 'package:injectable/injectable.dart';

import '../data_sources/job_requirements_api.dart';
import '../models/index.dart';

@injectable
class JobRequirementsRepository {
  final JobRequirementsAPI _api;

  JobRequirementsRepository(this._api);

  Future<List<JobModelDto>> fetchListJob() async {
    final response = await _api.fetchListJob();
    return response.payload!;
  }

  Future<List<JobRequirementsDto>> fetchJobRequirements({required int type}) async {
    final response = await _api.fetchJobRequirements(type);
    return response.payload!;
  }

  // Future<TermandConditionDto> fetchTermandConditionById({required int id}) async {
  //   final response = await _api.fetchTermandConditionById(id);
  //   return response.payload!;
  // }
  //
  Future<String> deleteJobRequirements({required int id}) async {
    final response = await _api.deleteJobRequirements(id);
    return response.message!;
  }

  //
  // Future<String> updateType({required int id}) async {
  //   final response = await _api.updateType(id);
  //   return response.message!;
  // }
  //
  Future<String> addEditJobRequirements({required AddEditJobContaionPrams addEditJobContaionPrams}) async {
    final response = await _api.addEditJobRequirements(addEditJobContaionPrams);
    return response.message!;
  }
}
