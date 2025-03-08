import 'package:json_annotation/json_annotation.dart'; 

part 'accept_or_reject_attachment_emp_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AcceptOrRejectAttachmentEmpPrams {
  @JsonKey(name: 'rejectReason')
  String? rejectReason;
  @JsonKey(name: 'freelancerId')
  int? freelancerId;
  @JsonKey(name: 'attachmentId')
  int? attachmentId;
  @JsonKey(name: 'statusCode')
  int? statusCode;

  AcceptOrRejectAttachmentEmpPrams({this.rejectReason, this.freelancerId, this.attachmentId, this.statusCode});

   factory AcceptOrRejectAttachmentEmpPrams.fromJson(Map<String, dynamic> json) => _$AcceptOrRejectAttachmentEmpPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AcceptOrRejectAttachmentEmpPramsToJson(this);
}

