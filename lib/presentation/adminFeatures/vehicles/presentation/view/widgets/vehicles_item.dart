 import 'package:shiftapp/presentation/adminFeatures/available_opportunities/presentation/widgets/build_popup_menu_button.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';
import 'package:shiftapp/presentation/shared/components/index.dart';
 import 'package:shiftapp/utils/app_icons.dart';
import '../../../../../../core/services/routes.dart';
 import '../../../../../../domain/entities/shared/date_formatter.dart';
import '../../../domain/entities/vehicle.dart';

class VehiclesItem extends BaseStatelessWidget {
  final Function() onRefresh;
  // final Function(String) onChangeStatus;
  final Function(int id) onDelete;
  Vehicle data;
  VehiclesItem({
    Key? key,
    required this.data,
    required this.onRefresh,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: Decorations.decorationTabs,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Row(
                children: [
                  kBuildCircleImage(data.vehicleImage ?? "", size: 40),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${data.vehicleBrandName ?? ""} - ${data.model ?? ""}',
                          style: kTextBold.copyWith(fontSize: 16),
                        ),
                        Text(
                          data.projectName ?? "",
                          style: kTextRegular.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _OptionsMenuButton(
                vehicleId: data.id ?? 0,
                onDelete: () => onDelete(data.id ?? 0),
                onRefresh: onRefresh,
              )
            ],
          ),
          SizedBox(height: 10),
          ListRowTextsIcons(icons: [
            AppIcons.buildingsOutline,
            AppIcons.car3,
            AppIcons.car3,
            AppIcons.color,
            AppIcons.calandery,
          ], titles: [
            strings.company_name,
            strings.plate_number,
            strings.license_number,
            strings.color,
            strings.year_crate,
          ], values: [
            '${data.companyName ?? ""}',
            data.plateNumber ?? "",
            data.licenseNumber ?? "",
            data.vehicleColorName ?? "",
            data.yearOfManufacture?.toString() ?? "",

          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: detailsButton(context),
          ),
        ],
      ),
    );
  }

  GestureDetector detailsButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.vehiclesDetailsPage,
          arguments: data.id,
        );
      },
      child: IconText(
        icon: AppIcons.hazard_details,
        text: strings.show_details,
        textStyle: kTextRegular.copyWith(fontSize: 14, color: kOrange00),
        crossAxisAlignment: CrossAxisAlignment.start,
        isIconLift: true,
        iconSize: 20,
        padding: EdgeInsets.only(top: 5),
      ),
    );
  }
}

class _OptionsMenuButton extends BaseStatelessWidget {
  final int vehicleId;
  final Function() onDelete;
  final Function() onRefresh;
  _OptionsMenuButton({
    required this.vehicleId,
    required this.onDelete,
    required this.onRefresh,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = kTextBold.copyWith(fontSize: 10, color: kGreen_54);
    double iconSize = 20;

    return OptionsMenuButton(
      options: [
        BuildPopupMenuItemContent(
          title: strings.edit_data_vehicles,
          iconPath: AppIcons.carEdit,
          titleStyle: titleStyle,
          iconSize: iconSize,
        ),
        // BuildPopupMenuItemContent(
        //   title: strings.maintenance,
        //   iconPath: AppIcons.maintenance,
        //   titleStyle: titleStyle,
        //   iconSize: iconSize,
        //   isDivider: false,
        // ),

        BuildPopupMenuItemContent(
          title: strings.vehicle_insurance,
          iconPath: AppIcons.car3,
          titleStyle: titleStyle,
          iconSize: iconSize,
        ),
        BuildPopupMenuItemContent(
          title: strings.edit_covenant,
          iconPath: AppIcons.hand,
          titleStyle: titleStyle,
          iconSize: iconSize,
        ),

        BuildPopupMenuItemContent(
          title: strings.print_qr_code,
          iconPath: AppIcons.qr3,
          titleStyle: titleStyle,
          iconSize: iconSize,
        ),
        BuildPopupMenuItemContent(
          title: strings.delete,
          iconPath: AppIcons.deleteOutline,
          titleStyle: titleStyle,
          iconSize: iconSize,
          isDivider: false,
        ),
      ],
      onSelect: (value) async {
        if (value == 0) {
          final isRefresh = await  Navigator.pushNamed(context, Routes.mainAddVehiclePage, arguments: vehicleId);
          print("isRefresh $isRefresh");
          if(isRefresh == true){
            onRefresh();
          }
        }
        else if (value == 1) {
          //vehicle_insurance
          Navigator.pushNamed(context, Routes.insurancePage,
              arguments: vehicleId);
        } else if (value == 2) {
          Navigator.pushNamed(context, Routes.vehiclesCovenantPage,
              arguments: vehicleId);
        } else if (value == 3) {
          Navigator.pushNamed(context, Routes.vehicleQrCodePage, arguments: vehicleId);

        } else if (value == 4) {
          onDelete();

        }
      },
    );
  }
}
