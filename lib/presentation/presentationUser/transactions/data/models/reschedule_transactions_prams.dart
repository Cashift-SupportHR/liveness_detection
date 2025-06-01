import 'package:json_annotation/json_annotation.dart'; 

part 'reschedule_transactions_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RescheduleTransactionsPrams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'startDateTime')
  String? startDateTime;
  @JsonKey(name: 'endDateTime')
  String? endDateTime;

  RescheduleTransactionsPrams({this.id,   this.description, this.startDateTime, this.endDateTime});

   factory RescheduleTransactionsPrams.fromJson(Map<String, dynamic> json) => _$RescheduleTransactionsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$RescheduleTransactionsPramsToJson(this);
}

