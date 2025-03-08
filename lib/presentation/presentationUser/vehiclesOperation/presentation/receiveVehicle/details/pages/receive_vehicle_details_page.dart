import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/vehiclesOperation/presentation/receiveVehicle/details/pages/receive_vehicle_details_screen.dart';
import '../../../../../../shared/components/base_widget_bloc.dart';
import '../../../../../common/common_state.dart';
import '../../../../domain/entities/receive_vehicle_details.dart';
import '../bloc/receive_vehicle_details_cubit.dart';

class ReceiveVehicleDetailsPage
    extends BaseBlocWidget<Initialized<ReceiveVehicleDetails>, ReceiveVehicleDetailsCubit> {
  @override
  loadInitialData(BuildContext context) {
    int id = getArguments(context);
    bloc.fetchReceiveVehicleDetails(id);
  }

  @override
  String? title(BuildContext context) {
    return strings.vehicles_details;
  }

  @override
  Widget buildWidget(BuildContext context, Initialized<ReceiveVehicleDetails> state) {
    return ReceiveVehicleDetailsScreen(
      data: state.data,
    );
  }
}
