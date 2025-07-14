import 'package:json_annotation/json_annotation.dart'; 

part 'update_transactions_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class UpdateTransactionsPrams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'finalSummary')
  String? finalSummary;

  UpdateTransactionsPrams({this.id, this.finalSummary});

   factory UpdateTransactionsPrams.fromJson(Map<String, dynamic> json) => _$UpdateTransactionsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$UpdateTransactionsPramsToJson(this);
}

