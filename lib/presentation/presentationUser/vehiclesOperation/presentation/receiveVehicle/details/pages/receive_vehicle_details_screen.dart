import 'package:shiftapp/presentation/presentationUser/advancedFilter/widgets/text_slider_widget.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';
import 'package:shiftapp/presentation/shared/components/index.dart';

import '../../../../../../../core/services/routes.dart';
import '../../../../../../../utils/app_icons.dart';
import '../../../../domain/entities/custody_handover.dart';
import '../../../../domain/entities/receive_vehicle_details.dart';
import '../../../../domain/entities/vehicle_component_handover.dart';

class ReceiveVehicleDetailsScreen extends BaseStatelessWidget {
  final ReceiveVehicleDetails data;

  ReceiveVehicleDetailsScreen({Key? key, required this.data}) : super(key: key);

  TextStyle titleStyle = kTextMedium.copyWith(color: kGray_79, fontSize: 12);
  TextStyle valueStyle = kTextMedium.copyWith(color: kBlack, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          vehicleData(),
          vehicleComponents(context),
          vehicleCovenant(context),
        ],
      ),
    );
  }

  Widget vehicleData() {
    return customExpansionTile(
      title: strings.vehicle_data,
      icon: AppIcons.vehicle_data,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoWidget(
            image: data.vehicleImage ?? "",
            name: data.vehicleBrand ?? "",
            subTitle: data.vehicleModel ?? "",
          ),
          Text(strings.vehicles_info,
              style: kTextRegular.copyWith(color: kPrimary, fontSize: 12)),
          SizedBox(height: 10),
          ListRowTextsV2(
            titleStyle: titleStyle,
            valueStyle: valueStyle,
            flex: 1,
            items: data.basicInfo(strings),
          ),
          SizedBox(height: 20),
          Text(strings.plate_license_info,
              style: kTextRegular.copyWith(color: kPrimary, fontSize: 12)),
          SizedBox(height: 10),
          ListRowTextsV2(
            titleStyle: titleStyle,
            valueStyle: valueStyle,
            flex: 1,
            items: data.plateAndLicenseInfo(strings),
          ),
          SizedBox(height: 20),
          Text(strings.additional_specifications,
              style: kTextRegular.copyWith(color: kPrimary, fontSize: 12)),
        ],
      ),
    );
  }

  Widget vehicleComponents(BuildContext context){
    return vehicleComponentsOrCovenant(context, strings.vehicle_components, AppIcons.vehicle_components, data.vehiclesComponentsHandovers ?? []);
  }

  Widget vehicleCovenant(BuildContext context){
    return vehicleComponentsOrCovenant(context, strings.covenant, AppIcons.covenantReceivedOutline, CustodyHandover.toVehiclesComponentsHandovers(data.vehiclesCustodiesHandovers ?? []));
  }

  Widget vehicleComponentsOrCovenant(BuildContext context,
      String title, String icon,
      List<VehicleComponentHandover> vehiclesComponentsHandovers) {
    return customExpansionTile(
      title: title,
      icon: icon,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: vehiclesComponentsHandovers.map((e) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(Icons.circle, color: kGray_1D, size: 8)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.vehicleComponentName ?? "",
                              style: kTextRegular.copyWith(
                                  color: kGray_1D, fontSize: 14)),
                          Text(e.componentStatusName ?? "",
                              style: kTextBold.copyWith(
                                  color: (e.componentStatus ?? false)
                                      ? kRed_00
                                      : kRed_07,
                                  fontSize: 14)),
                          if (e.componentStatus ?? false)
                            componentStatusTrue(context, e),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList() ??
            [],
      ),
    );
  }

  InkWell componentStatusTrue(
      BuildContext context, VehicleComponentHandover e) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.filesPreviewPage,
          arguments: [e.attachmentPath ?? ""],
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        decoration: Decorations.boxDecorationBorder(
            radius: 0, borderColor: kGray_70.withOpacity(0.41)),
        child: Column(
          children: [
            TextValue(
              text: strings.notes,
              value: e.issueDescription ?? "",
              textStyle: titleStyle,
              valueStyle: valueStyle,
            ),
            SizedBox(height: 10),
            showImages(context, e.attachmentPath ?? ""),
          ],
        ),
      ),
    );
  }

  Row showImages(BuildContext context, String image) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(strings.images + ": ", style: titleStyle),
        SizedBox(width: 10),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: Decorations.boxDecorationShaded(radius: 5),
          child: image.contains(".pdf")
              ? Icon(
                  Icons.picture_as_pdf_outlined,
                  color: kWhite,
                  size: 40,
                )
              : kBuildImage(
                  image,
                  border: 0,
                  height: 36,
                  width: 50,
                  borderRadius: 0,
                ),
        ),
      ],
    );
  }

  Container customExpansionTile(
      {required String title, required String icon, required Widget child}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(5),
      decoration: Decorations.shapeDecorationShadow(),
      child: ExpansionTile(
        title: Text(title, style: kTextMedium),
        leading: kLoadSvgInCirclePath(icon),
        tilePadding: EdgeInsets.symmetric(horizontal: 10),
        childrenPadding: EdgeInsets.all(0),
        children: [
          Divider(color: kGreen_33.withOpacity(0.2)),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: Decorations.boxDecorationBorder(
                radius: 0, borderColor: kGray_EE),
            child: child,
          ),
        ],
      ),
    );
  }
}
