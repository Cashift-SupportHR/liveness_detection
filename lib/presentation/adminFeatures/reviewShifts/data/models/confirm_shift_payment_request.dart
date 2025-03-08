import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/reviewShifts/data/models/job_evaluations_dto.dart';

part 'confirm_shift_payment_request.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ConfirmShiftPaymentRequest {
  @JsonKey(name: 'id')
  final  int? id;
  @JsonKey(name: 'description')
  final  String? description;
  @JsonKey(name: 'descriptionForBlock')
  final  String? descriptionForBlock;
  @JsonKey(name: 'statusId')
  final  int? statusId;
  @JsonKey(name: 'blockTypeId')
  final  int? blockTypeId;
  @JsonKey(name: 'userId')
  final  String? userId;
  @JsonKey(name: 'typeOfOpportunty')
  final  int? typeOfOpportunty;
  @JsonKey(name: 'evaluations')
  final  List<JobEvaluationsDto>? evaluations;

  ConfirmShiftPaymentRequest({this.id, this.description, this.descriptionForBlock, this.statusId, this.blockTypeId, this.userId, this.typeOfOpportunty, this.evaluations});

   factory ConfirmShiftPaymentRequest.fromJson(Map<String, dynamic> json) => _$ConfirmShiftPaymentRequestFromJson(json);

   Map<String, dynamic> toJson() => _$ConfirmShiftPaymentRequestToJson(this);
}


