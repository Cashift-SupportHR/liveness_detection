import 'package:json_annotation/json_annotation.dart'; 

part 'add_transactions_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddTransactionsPrams {
  @JsonKey(name: 'destination')
  String? destination;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'startDateTime')
  String? startDateTime;
  @JsonKey(name: 'endDateTime')
  String? endDateTime;

  AddTransactionsPrams({this.destination, this.description, this.startDateTime, this.endDateTime});

   factory AddTransactionsPrams.fromJson(Map<String, dynamic> json) => _$AddTransactionsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddTransactionsPramsToJson(this);
}

