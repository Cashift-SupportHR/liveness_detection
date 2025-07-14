import 'package:shiftapp/generated/assets.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';
import 'package:shiftapp/presentation/shared/components/index.dart';

import '../../../../../../../core/services/routes.dart';
import '../../../../../../../utils/app_icons.dart';
import '../../../../../../adminFeatures/maintenanceAndBreakdowns/domain/entities/maintenance.dart';
import '../../../../../../adminFeatures/vehicles/domain/entities/vehicle_violation.dart';
import '../../../../../../shared/components/map/points_map_screen.dart';
import '../../../../data/models/download_vehicle_violation_picture_params.dart';
import '../../../../domain/entities/custody_handover.dart';
import '../../../../domain/entities/driver_violation.dart';
import '../../../../domain/entities/vehicle_component_handover.dart';
import '../../../../domain/entities/vehicle_performance.dart';
import '../bloc/receive_vehicle_details_state.dart';

class ReceiveVehicleDetailsScreen extends BaseStatelessWidget {
  final ReceiveVehicleDetailsState state;
  final Function(int) onFetchVehiclePerformance;
  final Function(int) onFetchDriverViolations;
  final Function(int) onFetchViolationsFactory;
  final Function(int) onFetchRoundsMaintenance;
  final Function(DownloadVehicleViolationPictureParams)
  onDownloadViolationPicture;

  ReceiveVehicleDetailsScreen({
    Key? key,
    required this.state,
    required this.onFetchVehiclePerformance,
    required this.onFetchViolationsFactory,
    required this.onFetchRoundsMaintenance,
    required this.onFetchDriverViolations,
    required this.onDownloadViolationPicture,
  }) : super(key: key);

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
          if (state.details.vehicleHandoverImages?.isNotEmpty ?? false)
            vehicleImages(context),
          vehicleComponents(context),
          vehicleCovenant(context),
          vehiclePerformance(),
          vehicleViolations(),
          violationsFactory(),
          maintenanceBreakdowns(),
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
            image: state.details.vehicleImage ?? "",
            name: state.details.vehicleBrand ?? "",
            subTitle: state.details.vehicleModel ?? "",
          ),
          Text(
            strings.vehicles_info,
            style: kTextRegular.copyWith(color: kPrimary, fontSize: 12),
          ),
          SizedBox(height: 10),
          ListRowTextsV2(
            titleStyle: titleStyle,
            valueStyle: valueStyle,
            flex: 1,
            items: state.details.basicInfo(strings),
          ),
          SizedBox(height: 15),
          Text(
            strings.plate_license_info,
            style: kTextRegular.copyWith(color: kPrimary, fontSize: 12),
          ),
          SizedBox(height: 10),
          ListRowTextsV2(
            titleStyle: titleStyle,
            valueStyle: valueStyle,
            flex: 1,
            items: state.details.plateAndLicenseInfo(strings),
          ),
          SizedBox(height: 15),
          Text(
            strings.additional_specifications,
            style: kTextRegular.copyWith(color: kPrimary, fontSize: 12),
          ),
          SizedBox(height: 10),
          ListRowTextsV2(
            titleStyle: titleStyle,
            valueStyle: valueStyle,
            flex: 1,
            items: state.details.additionalSpecifications(strings),
          ),
        ],
      ),
    );
  }

  Widget vehicleImages(BuildContext context) {
    return customExpansionTile(
      title: strings.vehicle_image,
      icon: AppIcons.pickerImageOutline,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.filesPreviewPage,
            arguments: state.details.vehicleHandoverImages,
          );
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                state.details.vehicleHandoverImages?.map((e) {
                  return kBuildImage(
                    e,
                    border: 0,
                    height: 50,
                    width: 50,
                    borderRadius: 0,
                    showFullImage: false,
                  );
                }).toList() ??
                [],
          ),
        ),
      ),
    );
  }

  Widget vehiclePerformance() {
    return customExpansionTile(
      title: strings.vehicle_performance,
      icon: AppIcons.speed,
      isShowBorder: false,
      onExpansionChanged: (value) {
        if (state.vehiclePerformanceStream.data == null) {
          onFetchVehiclePerformance(state.details.id ?? 0);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: StreamDataStateWidget<VehiclePerformance?>(
          stream: state.vehiclePerformanceStream,
          builder: (context, data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            strings.maximum_recorded_speed,
                            style: kTextSemiBold.copyWith(
                              color: kGray_88,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "${data?.maxSpeed} ${strings.km_h}",
                            style: kTextRegular.copyWith(
                              color: kBlack,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Image.asset(Assets.vehicleSpeed)),
                  ],
                ),
                Text(
                  strings.vehicle_path,
                  style: kTextSemiBold.copyWith(color: kGray_88, fontSize: 18),
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 250,
                      child: PointsMapScreen(
                        points: data?.latlongs ?? [],
                        isShowBackButton: false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        PointsMapScreen.show(context, data?.latlongs ?? []);
                      },
                      child: FloatingActionButton(
                        backgroundColor: kWhite,
                        child: Icon(Icons.maximize, color: kPrimary),
                        mini: true,
                        elevation: 2,
                        onPressed: () {
                          PointsMapScreen.show(context, data?.latlongs ?? []);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget vehicleViolations() {
    return customExpansionTile(
      title: strings.driver_violations,
      icon: AppIcons.violation_type,
      isShowBorder: false,
      onExpansionChanged: (value) {
        if (state.driverViolations.data == null) {
          onFetchDriverViolations(state.details.id ?? 0);
        }
      },
      child: StreamDataStateWidget<List<DriverViolation>?>(
        stream: state.driverViolations,
        builder: (context, data) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: data?.length ?? 0,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              final item = data![index];
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: Decorations.boxDecorationBorder(radius: 0),
                child: Column(
                  children: [
                    ListRowTextsIconsV2(
                      titleStyle: titleStyle,
                      valueStyle: valueStyle,
                      isExpanded: false,
                      paddingItem: EdgeInsets.only(bottom: 10),
                      items: [
                        ListRowTextItem(
                          icon: AppIcons.violation_type,
                          title: strings.violation_type,
                          value: item.eventType ?? "",
                        ),
                        ListRowTextItem(
                          icon: AppIcons.timeOutline,
                          title: strings.violation_time,
                          value: item.dateFormated,
                        ),
                        ListRowTextItem(
                          icon: AppIcons.speed,
                          title: strings.speeding_during_violation,
                          value: '${item.speed} ${strings.km_h}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppOutlineButtonIcon(
                            text: strings.go_violation_site,
                            icon: AppIcons.locationPickerOutline,
                            iconColor: kOrange00,
                            textColor: kOrange00,
                            strokeColor: kOrange00,
                            iconSize: 18,
                            textStyle: kTextMedium.copyWith(
                              color: kOrange00,
                              fontSize: 12,
                            ),
                            onClick: () {
                              item.openMap();
                            },
                          ),
                        ),
                        if (item.isAllowPicture == true) ...[
                          SizedBox(width: 5),
                          Expanded(
                            child: AppOutlineButtonIcon(
                              text: strings.download_violation_image,
                              icon: AppIcons.downloadOutline,
                              iconColor: kPrimary,
                              strokeColor: kPrimary,
                              textStyle: kTextMedium.copyWith(
                                color: kPrimary,
                                fontSize: 12,
                              ),
                              onClick: () {
                                onDownloadViolationPicture(
                                  item.getDownloadViolationPictureParams(),
                                );
                              },
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget violationsFactory() {
    return customExpansionTile(
      title: strings.violations_of_factory,
      icon: AppIcons.factoryViolationsv2,
      isShowBorder: false,
      onExpansionChanged: (value) {
        if (state.violationsFactory.data == null) {
          onFetchViolationsFactory(state.details.roundTripId ?? 0);
        }
      },
      child: StreamDataStateWidget<List<ContractViolation>?>(
        stream: state.violationsFactory,
        builder: (context, data) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: data?.length ?? 0,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              final item = data![index];

              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: Decorations.boxDecorationBorder(radius: 0),
                child: Column(
                  children: [
                    ListRowTextsIconsV2(
                      titleStyle: titleStyle.copyWith(color: kPrimary),
                      valueStyle: valueStyle,
                      isExpanded: false,
                      iconColor: kPrimary,
                      paddingItem: EdgeInsets.only(bottom: 10),
                      items: [
                        ListRowTextItem(
                          icon: AppIcons.violation_type,
                          title: strings.violation_type,
                          value: item.contractViolationType ?? "",
                        ),
                        ListRowTextItem(
                          icon: AppIcons.buildingsOutline,
                          title: strings.company_name,
                          value: item.companyName,
                        ),
                        ListRowTextItem(
                          icon: AppIcons.streetName,
                          title: strings.street_name,
                          value: item.streetName,
                        ),
                        ListRowTextItem(
                          icon: AppIcons.details,
                          title: strings.details,
                          value: item.details,
                        ),
                        ListRowTextItem(
                          icon: AppIcons.attachments_hazard,
                          title: strings.attached_attachments,
                          value: "",
                        ),
                      ],
                    ),
                    showImagesList(
                      context: context,
                      images:
                          item.contractViolationAttachments
                              ?.map((e) => e.path ?? "")
                              .toList(),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget maintenanceBreakdowns() {
    return customExpansionTile(
      title: strings.breakdown_maintenance,
      icon: AppIcons.maintenancev2,
      isShowBorder: false,
      onExpansionChanged: (value) {
        if (state.maintenanceBreakdowns.data == null) {
          onFetchRoundsMaintenance(state.details.roundTripId ?? 0);
        }
      },
      child: StreamDataStateWidget<List<Maintenance>?>(
        stream: state.maintenanceBreakdowns,
        builder: (context, data) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: data?.length ?? 0,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              final item = data![index];

              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: Decorations.boxDecorationBorder(radius: 0),
                child: Column(
                  children: [
                    ListRowTextsIconsV2(
                      titleStyle: titleStyle.copyWith(color: kPrimary),
                      valueStyle: valueStyle,
                      isExpanded: false,
                      iconColor: kPrimary,
                      paddingItem: EdgeInsets.only(bottom: 10),
                      items: [
                        ListRowTextItem(
                          icon: AppIcons.typeOperation,
                          title: strings.type_operation,
                          value: item.faultMaintenanceType ?? "",
                        ),
                        ListRowTextItem(
                          icon: AppIcons.details,
                          title: strings.details,
                          value: item.description ?? "",
                        ),

                        ListRowTextItem(
                          icon: AppIcons.submission_date,

                          title: strings.submission_date,
                          value: item.dateFaultApplying ?? "",
                        ),
                      ],
                    ),
                    imagesMaintenance(
                      context,
                      item.faultMaintenanceImagesAfter,
                      strings.image_after_maintenance,
                    ),
                    SizedBox(height: 10),
                    imagesMaintenance(
                      context,
                      item.faultMaintenanceImagesBefore,
                      strings.image_before_maintenance,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget vehicleComponents(BuildContext context) {
    return vehicleComponentsOrCovenant(
      context,
      strings.vehicle_components,
      AppIcons.vehicle_components,
      state.details.vehiclesComponentsHandovers ?? [],
    );
  }

  Widget vehicleCovenant(BuildContext context) {
    return vehicleComponentsOrCovenant(
      context,
      strings.covenant,
      AppIcons.covenantReceivedOutline,
      CustodyHandover.toVehiclesComponentsHandovers(
        state.details.vehiclesCustodiesHandovers ?? [],
      ),
    );
  }

  Widget vehicleComponentsOrCovenant(
    BuildContext context,
    String title,
    String icon,
    List<VehicleComponentHandover> vehiclesComponentsHandovers,
  ) {
    return customExpansionTile(
      title: title,
      icon: icon,

      isShowWarning: true,
      warningCount: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            vehiclesComponentsHandovers.map((e) {
              print(e.componentStatusName);
              return Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Icon(Icons.circle, color: kGray_1D, size: 8),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.vehicleComponentName ?? "",
                            style: kTextRegular.copyWith(
                              color: kGray_1D,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            e.componentStatusName ?? "",
                            style: kTextBold.copyWith(
                              color:
                                  (e.componentStatus ?? false)
                                      ? kRed_00
                                      : kRed_07,
                              fontSize: 14,
                            ),
                          ),
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
    BuildContext context,
    VehicleComponentHandover e,
  ) {
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
          radius: 0,
          borderColor: kGray_70.withOpacity(0.41),
        ),
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
          child:
              image.contains(".pdf")
                  ? Icon(Icons.picture_as_pdf_outlined, color: kWhite, size: 40)
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

  Container customExpansionTile({
    required String title,
    required String icon,
    int? warningCount,
    required Widget child,
    bool isShowBorder = true,
    bool isShowWarning = false,
    void Function(bool)? onExpansionChanged,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(5),
      decoration: Decorations.shapeDecorationShadow(),
      child: ExpansionTile(
        title: Text(title, style: kTextMedium),
        leading: kLoadSvgInCirclePath(
          icon,
          height: 30,
          width: 30,
          color: Colors.black.withOpacity(.5),
        ),
        tilePadding: EdgeInsets.symmetric(horizontal: 10),
        trailing: SizedBox(
          width: isShowWarning?57:25,
          height: 40,
          child: Row(
            children: [
              if (isShowWarning)
                SizedBox(
                  height: 40,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      kLoadSvgInCirclePath(
                        AppIcons.waring,
                        height: 30,
                        width: 30,
                      ),

                      Positioned(
                        top: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFDADA),
                          radius: 8,
                          child: Text(
                            "${warningCount ?? "0"}",
                            style: kTextRegular.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Icon(Icons.keyboard_arrow_down, color: Colors.black),
            ],
          ),
        ),
        childrenPadding: EdgeInsets.all(0),
        onExpansionChanged: onExpansionChanged,
        children: [
          Divider(color: kGreen_33.withOpacity(0.2)),
          isShowBorder
              ? Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: Decorations.boxDecorationBorder(
                  radius: 0,
                  borderColor: kGray_EE,
                ),
                child: child,
              )
              : child,
        ],
      ),
    );
  }

  Widget showImagesList({
    required BuildContext context,
    required List<String>? images,
  }) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.filesPreviewPage,
          arguments: images,
        );
      },
      child: Container(
        height: 60,
        width: double.infinity,

        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
                images?.length == 0 || images == null
                    ? []
                    : images
                        .map(
                          (e) => Container(
                            alignment: Alignment.center,
                            decoration: Decorations.decorationOnlyRadius(
                              radius: 2,
                            ),
                            height: 36,
                            width: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            clipBehavior: Clip.antiAlias,
                            child:
                                e.contains(".pdf")
                                    ? Icon(
                                      Icons.picture_as_pdf_outlined,
                                      color: kWhite,
                                      size: 40,
                                    )
                                    : kBuildImage(
                                      e,
                                      border: 0,
                                      height: 36,
                                      width: 50,
                                      borderRadius: 0,
                                    ),
                          ),
                        )
                        .toList(),
          ),
        ),
      ),
    );
  }

  Widget imagesMaintenance(
    BuildContext context,
    List<String>? images,
    String title,
  ) {
    return Column(
      children: [
        buildIconText(icon: AppIcons.attachments_hazard, title: title),

        showImagesList(context: context, images: images),
      ],
    );
  }

  Padding buildIconText({
    required String icon,
    required String title,
    Color? colorText,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: IconText(
        icon: icon,
        text: title + ' :',

        textStyle: titleStyle.copyWith(color: kPrimary),
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
