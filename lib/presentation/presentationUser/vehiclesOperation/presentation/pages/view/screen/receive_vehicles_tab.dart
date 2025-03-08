import 'package:flutter/material.dart';
import 'package:shiftapp/main_index.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/presentation/pages/view/screen/receive_vehicles_page.dart';
import 'package:shiftapp/presentation/shared/components/app_widgets.dart';
import '../../../../../../shared/components/tabview/tab_bar_view_widget.dart';
import '../../../../../salarydefinitionrequest/requests/widgets/title_and_add_new_request.dart';
import '../../../../data/models/mainReceiveVehicleArgument.dart';
import '../../add/main_receive_vehicle_page.dart';

class ReceiveVehiclesTabs extends StatefulWidget {
  ReceiveVehiclesTabs({Key? key}) : super(key: key);

  @override
  State<ReceiveVehiclesTabs> createState() => _ReceiveVehiclesTabsState();
}

class _ReceiveVehiclesTabsState extends State<ReceiveVehiclesTabs> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations strings = AppLocalizations.of(context)!;
    return AppScaffold(
      title: strings.receive_vehicle,
      body: Column(
        children: [
          TitleAndAddNewRequest(
            title: strings.vehicle,
            textButton: strings.receive_vehicle,
            onTap: () {
              MainReceiveVehiclePage.push(context,
                  mainReceiveVehicleArg: MainReceiveVehicleArg(
                    isEdit: false,
                  ), onSuccess: () {
                setState(() {});
              });
            },
          ),
          Expanded(
            child: TabBarViewWidget(
              isSeparate: true,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              marginTabs: const EdgeInsets.symmetric(horizontal: 16),
              tabs: [
                strings.complete_receipt,
                strings.incomplete_receipt,
              ],
              children: [
                ReceiveVehiclesPage(
                  tabIndex: 1,
                ),
                ReceiveVehiclesPage(
                  tabIndex: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
