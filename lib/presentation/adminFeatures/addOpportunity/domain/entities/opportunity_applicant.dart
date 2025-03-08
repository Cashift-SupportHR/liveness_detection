import 'package:json_annotation/json_annotation.dart';

import '../../../shared/domain/entities/opportunities/index.dart';
import '../../data/models/opportunity_applicant_dto.dart';

class OpportunityApplicant {
  List<AppliedData>? freeLanceApplys;
  List<NavItem>? navItems;

  OpportunityApplicant({this.freeLanceApplys, this.navItems});

  factory OpportunityApplicant.fromDto(OpportunityApplicantDto json) =>
      OpportunityApplicant(
        freeLanceApplys:
            json.freeLanceApplys!.map((e) => AppliedData.fromDto(e)).toList(),
        navItems: json.navItems!.map((e) => NavItem.fromDto(e)).toList(),
      );
}
