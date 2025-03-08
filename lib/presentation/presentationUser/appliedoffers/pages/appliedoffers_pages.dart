import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/appliedoffers/pages/applied_offers_list_pages.dart';
import 'package:shiftapp/presentation/presentationUser/common/extensions.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

class AppliedOffersPage extends StatelessWidget {
   final bool ?  hasBar ;
   const AppliedOffersPage({Key? key ,this.hasBar}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                    Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded,color: kFontDark,),
              ),
              centerTitle: true,
              title: Text(context.getStrings().working_hours , style: kTextMedium,),
              backgroundColor: kAppBarColor,
              bottom:  TabBar(
                indicatorColor: kPrimary,
                unselectedLabelStyle: kTextLabel,
                labelStyle: kTextMedium,
                labelColor: kPrimary,
                unselectedLabelColor:kFontDark ,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: context.getStrings().active,),
                  Tab(text: context.getStrings().finished)
                ],
              ),
            ),
            body:
             TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                AppliedOffersListPage(activeOffers: true,),
                AppliedOffersListPage(activeOffers: false,)
              ],
            )
        ));
//decoration container
  }
}