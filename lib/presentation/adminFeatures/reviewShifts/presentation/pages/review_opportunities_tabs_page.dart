import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '/presentation/adminFeatures/reviewShifts/presentation/pages/review_opportunities_page.dart';
import '/presentation/shared/components/app_widgets.dart';
import '/presentation/shared/components/base_stateless_widget.dart';
import '/presentation/shared/components/custom_tabs.dart';

import '../../domain/entities/status_types.dart';

class ReviewOpportunitiesTabsPage extends BaseStatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: strings.opportunities_review,
        body: CustomTabs(
          tabs: [strings.waiting_approval, strings.approved, strings.rejected],
          children: [
            ReviewOpportunitiesPage(
              status: PaymentRequestStatusTypes.kPendingOpportunitiesStatus,
            ),
            ReviewOpportunitiesPage(
              status: PaymentRequestStatusTypes.kApprovedOpportunitiesStatus,
            ),
            ReviewOpportunitiesPage(
              status: PaymentRequestStatusTypes.kRejectedOpportunitiesStatus,
            ),
          ],
        ));
  }
}
