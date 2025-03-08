import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/presentation/pages/view/screen/receive_vehicles_screen.dart';
import 'package:shiftapp/presentation/shared/components/base_widget_bloc.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
import '../../../../domain/entities/receiveVehicle.dart';
import '../bloc/receive_vehicles_cubit.dart';

class ReceiveVehiclesPage extends BaseBlocWidget<
    Initialized<List<ReceiveVehicle>>, ReceiveVehiclesCubit> {
  final int tabIndex;

  ReceiveVehiclesPage({super.key, required this.tabIndex});

  @override
  void loadInitialData(BuildContext context) {
    checkAndFetchInitData();
  }

  @override
  Widget buildWidget(
      BuildContext context, Initialized<List<ReceiveVehicle>> state) {
    print(tabIndex);
    return ReceiveVehiclesScreen(
      tabId: tabIndex,
      data: state.data,
      onRefresh: () => loadInitialData(context),
    );
  }



  Future<void> checkAndFetchInitData() async {
    await Future.delayed(
      Duration(milliseconds: 100),
          () async {
        final checkFace = await checkFaceRecognition(context);
        if (checkFace == true) {
          bloc.fetchReceiveVehicle(tabIndex == 1 ? true : false);
        } else {
          bloc.emitVerificationFaceException();
        }
      },
    );
  }
}
