import 'dart:async';

import 'package:injectable/injectable.dart';

import '../datasource/employee_map_provider.dart';
import '../models/emp_map_dto.dart';
import '../models/fetch_emp_map_prams.dart';

@injectable
class EmployeeMapRepository {
  final EmployeeMapAPI _api;

  EmployeeMapRepository(this._api);
   Future< EmpMapDto> fetchEmpInfoLoc(FetchEmpMapPrams  fetchEmpMapPrams) async {
    final response = await _api.fetchEmpInfoLoc(fetchEmpMapPrams);
    return response.payload!;
  }


}
