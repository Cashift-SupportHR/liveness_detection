import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/shared/data/models/index.dart';

part 'opportunity_applicant_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OpportunityApplicantDto {
  @JsonKey(name: 'freeLanceApplys')
  List<AppliedDataDto>? freeLanceApplys;
  @JsonKey(name: 'navItems')
  List<NavItemDto>? navItems;

  OpportunityApplicantDto({this.freeLanceApplys, this.navItems});

   factory OpportunityApplicantDto.fromJson(Map<String, dynamic> json) => _$OpportunityApplicantDtoFromJson(json);

   Map<String, dynamic> toJson() => _$OpportunityApplicantDtoToJson(this);
}