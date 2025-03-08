import 'package:json_annotation/json_annotation.dart'; 

part 'focus_point_transaction_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class FocusPointTransactionTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  FocusPointTransactionTypeDto({this.id, this.name});

   factory FocusPointTransactionTypeDto.fromJson(Map<String, dynamic> json) => _$FocusPointTransactionTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointTransactionTypeDtoToJson(this);
}

