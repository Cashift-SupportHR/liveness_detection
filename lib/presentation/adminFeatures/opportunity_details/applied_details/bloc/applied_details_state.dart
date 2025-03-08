
import '../../../../presentationUser/common/common_state.dart';
import '../../../addOpportunity/domain/entities/opportunity_applicant.dart';
import '../../../shared/domain/entities/opportunities/applicant_role.dart';

class AppliedDetailsState<T> extends CommonStateFBuilder {
  OpportunityApplicant opportunityApplicant;
  List<ApplicantRole> applicantRoles;

  AppliedDetailsState({
    required this.opportunityApplicant,
    required this.applicantRoles,
  });
}
