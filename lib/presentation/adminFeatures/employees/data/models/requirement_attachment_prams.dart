import 'package:json_annotation/json_annotation.dart'; 

part 'requirement_attachment_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RequirementAttachmentPrams {
  @JsonKey(name: 'FreelancerId')
  int? freelancerId;
  @JsonKey(name: 'RequirementAttachmentId')
  int? requirementAttachmentId;

  RequirementAttachmentPrams({this.freelancerId, this.requirementAttachmentId});

   factory RequirementAttachmentPrams.fromJson(Map<String, dynamic> json) => _$RequirementAttachmentPramsFromJson(json);

   Map<String, dynamic> toJson() => _$RequirementAttachmentPramsToJson(this);
}

