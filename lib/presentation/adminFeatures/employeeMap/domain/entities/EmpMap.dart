import '../../data/models/emp_map_dto.dart';
import 'FreeLncerLocations.dart';

class EmpMap {
  EmpMap({
      this.malesCount, 
      this.femalesCount, 
      this.freeLncerLocations,});


  int? malesCount;
  int? femalesCount;
  List<FreeLncerLocations>? freeLncerLocations;

  factory EmpMap.fromDto(EmpMapDto json) {
    return EmpMap(
      malesCount: json.malesCount,
      femalesCount: json.femalesCount,
      freeLncerLocations: json.freeLncerLocations?.map((e) => FreeLncerLocations.fromDto(e)).toList(),
    );
  }

}