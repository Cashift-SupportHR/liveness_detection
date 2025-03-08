import '../../../shared/domain/entities/opportunities/OpportunityTabs.dart';
import '../../../shared/domain/entities/opportunities/opportunity.dart';

class TabWithOpportunities {
  final OpportunityTabs tab;
  final List<Opportunity> opportunities;
  final List<NavItem> navItem;

  TabWithOpportunities({required this.tab,required this.navItem, required this.opportunities});
}