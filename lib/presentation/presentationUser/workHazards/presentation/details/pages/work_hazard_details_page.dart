import 'package:flutter/material.dart';
import '../../../../../presentationUser/common/common_state.dart';
import '../../../../../shared/components/base_widget_bloc.dart';
import '../../../domain/entities/work_hazard.dart';
import '../bloc/work_hazard_details_cubit.dart';
import 'work_hazard_details_screen.dart';

class WorkHazardDetailsPage
    extends BaseBlocWidget<Initialized<WorkHazard>, WorkHazardDetailsCubit> {
  @override
  loadInitialData(BuildContext context) {
    int id = getArguments(context);
    bloc.fetchWorkHazardDetails(id);
  }

  @override
  String? title(BuildContext context) {
    return strings.work_hazard_details;
  }

  @override
  Widget buildWidget(BuildContext context, Initialized<WorkHazard> state) {
    return WorkHazardDetailsScreen(
      data: state.data,
    );
  }
}
