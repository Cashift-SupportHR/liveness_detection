import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/data/models/add_image_and_descriptions_components_prams.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/presentation/pages/add/vehicle_components/screen/vehicle_components_screen.dart';
import 'package:shiftapp/presentation/shared/components/base_widget_bloc.dart';

import '../../../../../data/models/create_vehicle_handover_prams.dart';

import '../../../../../data/models/mainReceiveVehicleArgument.dart';
import '../../../../../domain/entities/custody_handover.dart';
import '../bloc/vehicles_components_cubit.dart';
import '../intent/vehicle_components_intents.dart';

class VehicleComponentsPage extends BaseBlocWidget<
    InitializedVehiclesComponents, VehiclesComponentsCubit> {
  final Function(int handoverId, List<CustodyHandover>?) onNext;

  final Function() onCancel;
  CreateVehicleHandoverPrams? Function()? onInitialDataCallback;
  MainReceiveVehicleArg? mainReceiveVehicleArg;

  VehicleComponentsPage(
      {Key? key,
      required this.onCancel,
      required this.onNext,
      this.mainReceiveVehicleArg,
      this.onInitialDataCallback})
      : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchVehicleComponents(
        onInitialDataCallback!(), mainReceiveVehicleArg?.receiveVehicle?.id);
  }

  int? handoverId;
  List<CustodyHandover> custodiesHandovers = [];

  @override
  Widget buildWidget(
      BuildContext context, InitializedVehiclesComponents state) {
    custodiesHandovers =
        state.receiveVehicleDetails?.vehiclesCustodiesHandovers ?? [];
    return VehicleComponentsScreen(
      addStream: bloc.addStream,
      vehicleComponentList: state.vehicleComponents,
      // receiveVehicleDetails: state.receiveVehicleDetails,
      handoverId: mainReceiveVehicleArg?.isEdit == false
          ? state.createVehicleHandover.id ?? 0
          : mainReceiveVehicleArg?.receiveVehicle?.handoverId ?? 0,
      intentCallBack: (VehicleComponentsIntents intent) {
        print('intentCallBack');
        onIntent(intent, state);
      },
    );
  }

  onIntent(
      VehicleComponentsIntents intent, InitializedVehiclesComponents state) {
    if (intent is SubmitVehicleComponents) {
      if (mainReceiveVehicleArg?.isEdit == false) {
        handoverId = state.createVehicleHandover.id;
      }

      bloc.addComponents(intent.data);
    }
    if (intent is CancelVehicleComponents) {
      onCancel();
    }
    if (intent is SubmitQuestionAnswer) {
      bloc.addImageAndDescriptionsComponents(
          addImageAndDescriptionsComponentsPrams:
              intent.addImageAndDescriptionsComponentsPrams,
          file: intent.files);
    }
  }

  @override
  void onSuccessDataState(data) {
    if (data == "onNext") {
      onNext(handoverId ?? 0, custodiesHandovers);
    }
  }
}
