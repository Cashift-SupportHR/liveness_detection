import 'package:json_annotation/json_annotation.dart'; 

part 'emp_attandance_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmpAttandancePrams {
  @JsonKey(name: 'scheduleEmployeeWorkId')
  int? scheduleEmployeeWorkId;
  @JsonKey(name: 'year')
  int? year;
  @JsonKey(name: 'month')
  int? month;
  @JsonKey(name: 'typeRequest')
  int? typeRequest;

  EmpAttandancePrams({this.scheduleEmployeeWorkId, this.year, this.month, this.typeRequest});

   factory EmpAttandancePrams.fromJson(Map<String, dynamic> json) => _$EmpAttandancePramsFromJson(json);

   Map<String, dynamic> toJson() => _$EmpAttandancePramsToJson(this);
}

