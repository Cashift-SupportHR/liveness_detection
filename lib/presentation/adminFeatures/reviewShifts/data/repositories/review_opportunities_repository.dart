import 'package:injectable/injectable.dart';

import '../data_sources/review_opportunities_api.dart';
import '../models/complet_opportunity_dto.dart';
import '../models/index.dart';
import '../models/review_shiftsprams.dart';

@injectable
class ReviewOpportunitiesRepository{
  final ReviewOpportunitiesApi _opportunitiesApi ;
  ReviewOpportunitiesRepository(this._opportunitiesApi);

  Future<List<CompletedOpportunityDto>> fetchPendingConfirmationOpportunities() async {
     final response = await  _opportunitiesApi.fetchPendingConfirmationOpportunities();
     return response.payload!;
  }

  Future<List<CompletedOpportunityDto>> fetchCompletedOpportunitiesByType(int statusId) async {
     final response = await  _opportunitiesApi.fetchCompletedOpportunitiesByType(statusId);
     return response.payload!;
  }
  Future<List<JobEvaluationsDto>> fetchGetJobEvaluations(int freelancerId) async {
     final response = await  _opportunitiesApi.fetchGetJobEvaluations(freelancerId);
     return response.payload!;
  }
  Future<BanTypes> fetchBlockTypes() async {
     final response = await  _opportunitiesApi.fetchBlockTypes();
     return response.payload!;
  }

  Future<String> confirmShiftPaymentRequest(ConfirmShiftPaymentRequest params) async {
    final response = await  _opportunitiesApi.confirmShiftPaymentRequest(params);
    return response.message!;
  }
  Future<CompletOpportunityDto> fetchReviewOpportunitiesByType(ReviewShiftsprams params) async {
    final response = await  _opportunitiesApi.fetchReviewOpportunitiesByType(params);
    return response.payload!;
  }
}