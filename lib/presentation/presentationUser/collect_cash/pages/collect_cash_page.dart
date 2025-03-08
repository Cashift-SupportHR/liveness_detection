import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/collect_cash/pages/collect_cash_screen.dart';
import 'package:shiftapp/presentation/presentationUser/common/extensions.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

class CollectCashPage  extends StatelessWidget {
   final bool ?  hasBar ;
  const CollectCashPage({Key? key ,this.hasBar = true}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              leading:IconButton(
                onPressed: () {
                  print('DefaultTabController onBack');
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded,color: kFontDark,),
              ),
              elevation: 0,
              centerTitle: true,
              title: Text(context.getStrings().collect_cash_title , style: kTextMedium,),
              backgroundColor: kAppBarColor,
              bottom:  TabBar(
                indicatorColor: kPrimary,
                unselectedLabelStyle: kTextLabel,
                labelStyle: kTextMedium,
                labelColor: kPrimary,
                unselectedLabelColor:kFontDark ,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: context.getStrings().collected,),
                  Tab(text: context.getStrings().not_collected,),
                ],
              ),
            ),
            backgroundColor: kBackground,
            body:
             const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                CollectCashScreen(active: false,),
                CollectCashScreen(active: true,),
              ],
            )
        ));

  }
}