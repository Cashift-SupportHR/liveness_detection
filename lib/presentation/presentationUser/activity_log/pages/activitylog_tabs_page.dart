import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/activity_log/pages/activity_log_list_page.dart';
import 'package:shiftapp/presentation/presentationUser/common/extensions.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

class ActivityLogPage  extends StatelessWidget {
   final bool ?  hasBar ;
  const ActivityLogPage({Key? key ,this.hasBar = true}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              leading:IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded,color: kFontDark,),
                color: Colors.white,
              ),

              toolbarHeight: hasBar==true ? 80 :80,
              elevation: 0,
              centerTitle: true,
              title: Text(context.getStrings().activity_log_title , style:  kTextMedium.copyWith(color: kFontDark),),
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
                ActivityLogListPage(active: true,),
                ActivityLogListPage(active: false,)
              ],
            )
        ));

  }
}