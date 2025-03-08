import 'package:shiftapp/utils/app_icons.dart';

import '../../../../../../../core/services/routes.dart';
import '../../../../../../adminFeatures/available_opportunities/presentation/widgets/build_popup_menu_button.dart';
import '../../../../../../shared/components/index.dart';
import '../../../../../resources/colors.dart';
import '../../../../../resources/constants.dart';
import '../../../../data/models/mainReceiveVehicleArgument.dart';
import '../../../../domain/entities/receiveVehicle.dart';
import '../../add/main_receive_vehicle_page.dart';

class ReceiveVehiclesItem extends BaseStatelessWidget {
  final int tabId;
  ReceiveVehicle data;
  final Function() onRefresh;
  ReceiveVehiclesItem(
      {super.key,
      required this.onRefresh,
      required this.tabId,
      required this.data});
  @override
  Widget build(BuildContext context) {
    print(tabId);
    print("tabId");
    return Container(
      decoration: Decorations.decorationTabs,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          headerVehicles(),
          ListRowTextsIcons(
            iconColor: kGray_86,
            titleStyle: kTextMedium.copyWith(fontSize: 12, color: kGray_86),
            icons: [
              AppIcons.carNumber,
              AppIcons.calander5,
              AppIcons.timer5,
              AppIcons.handUser,
            ],
            titles: [
              strings.plate_number,
              strings.date,
              strings.time,
              strings.name_receipt,
            ],
            values: [
              data.vehiclePlateNumber ?? "",
              data.vehicleHandoverDate ?? "",
              data.vehicleHandoverTimeFormatted ?? "",
              data.freelancerName ?? "",
            ],
          ),
          detailsButton(context),
        ],
      ),
    );
  }

  Widget headerVehicles() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kBuildCircleImage(data.vehicleImage ?? "", size: 40),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.vehicleModel ?? "",
                style: kTextBold.copyWith(fontSize: 16),
              ),
              Text(
                tabId == 1
                    ? strings.complete_receipt
                    : strings.incomplete_receipt,
                style: kTextRegular.copyWith(
                    fontSize: 12, color: tabId == 1 ? kPrimaryDark : kRed),
              ),
            ],
          ),
        ),
        tabId == 2
            ? _OptionsMenuButton(
                data: data,
                onRefresh: onRefresh,
              )
            : SizedBox(),
      ],
    );
  }



  GestureDetector detailsButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.receiveVehicleDetailsPage,
            arguments: data.id);
      },
      child: IconText(
        icon: AppIcons.hazard_details,
        text: strings.show_details,
        textStyle: kTextRegular.copyWith(fontSize: 14, color: kOrange00),
        crossAxisAlignment: CrossAxisAlignment.start,
        isIconLift: true,
        iconSize: 20,
        padding: EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}

class _OptionsMenuButton extends BaseStatelessWidget {
  final ReceiveVehicle data;
  final Function() onRefresh;
  _OptionsMenuButton({super.key, required this.data, required this.onRefresh});
  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = kTextBold.copyWith(fontSize: 10, color: kGreen_54);

    return OptionsMenuButton(
      options: [
        BuildPopupMenuItemContent(
          title: strings.complete_receipt_information,
          titleStyle: titleStyle,
          isDivider: false,
        ),
      ],
      onSelect: (value) async {
        if (value == 0) {
          MainReceiveVehiclePage.push(context,
              mainReceiveVehicleArg:
                  MainReceiveVehicleArg(isEdit: true, receiveVehicle: data),
              onSuccess: () {
                onRefresh();
          });
        }
      },
    );
  }
}
