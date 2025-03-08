import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../domain/entities/job_offers/check_working_document.dart';
import '../../../../domain/entities/jobs/interview_info.dart';

class AuthorizedToJoinOpportunity extends SuccessStateListener{
  AuthorizedToJoinOpportunity();

}
class OpportunityJoinedSuccess extends SuccessStateListener<String>{
  OpportunityJoinedSuccess({required super.data});
}
class OpportunityRequiredWorkingDocuments extends SuccessStateListener<CheckWorkingDocument>{
  OpportunityRequiredWorkingDocuments({required super.data});
}

class OpportunityRequiredInterview extends SuccessStateListener<InterviewInfo>{
  OpportunityRequiredInterview({required super.data});
}