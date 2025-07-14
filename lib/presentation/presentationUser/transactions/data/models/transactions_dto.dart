import 'package:json_annotation/json_annotation.dart'; 

part 'transactions_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TransactionsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'destination')
  String? destination;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'startDateTime')
  String? startDateTime;
  @JsonKey(name: 'endDateTime')
  String? endDateTime;
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'statusName')
  String? statusName;
  @JsonKey(name: 'finalSummary')
  String? finalSummary;
  @JsonKey(name: 'freelancerId')
  int? freelancerId;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'freelancerPhoneNumber')
  String? freelancerPhoneNumber;
  @JsonKey(name: 'freelancerProfileImage')
  String? freelancerProfileImage;

  TransactionsDto({this.id, this.destination,this.freelancerProfileImage,this.freelancerPhoneNumber, this.description, this.startDateTime, this.endDateTime, this.status, this.statusName, this.finalSummary, this.freelancerId, this.freelancerName});

   factory TransactionsDto.fromJson(Map<String, dynamic> json) => _$TransactionsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TransactionsDtoToJson(this);
}

