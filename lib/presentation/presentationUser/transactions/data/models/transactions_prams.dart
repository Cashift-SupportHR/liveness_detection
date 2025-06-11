import 'package:json_annotation/json_annotation.dart'; 

part 'transactions_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TransactionsPrams {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'EndDateTime',includeIfNull: false)
  String? endDateTime;
  @JsonKey(name: 'StartDateTime',includeIfNull: false)
  String? startDateTime;
  @JsonKey(name: 'SearchString',includeIfNull: false)
  String? searchString;

  TransactionsPrams({this.status, this.endDateTime, this.startDateTime, this.searchString});

   factory TransactionsPrams.fromJson(Map<String, dynamic> json) => _$TransactionsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$TransactionsPramsToJson(this);
}

