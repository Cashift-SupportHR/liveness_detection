import 'package:flutter/material.dart';

import '../../../shared/components/base_widget_bloc.dart';
import '../../common/common_state.dart';
import '../bloc/map_picker_cubit.dart';
import '../widgets/map_picker_item.dart';
import 'map_picker_screen.dart';

class MapPickerPage extends BaseBlocWidget<UnInitState, MapPickerCubit> {
  MapPickerPage({Key? key})
      : super(key: key);


  // @override
  // String title(context)=> 'Map Picker';

  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return MapPickerScreen(
      predictionsSearchStream: bloc.predictionsSearchStream,
        placeDetailsStream: bloc.placeDetailsStream,
      onFetchAutoComplete: (String input) {
        bloc.fetchPlacesAutocomplete(input);
      },
      onFetchPlaceDetails: (String placeId) {
        bloc.fetchPlaceDetails(placeId);
      },
    );
  }
}
