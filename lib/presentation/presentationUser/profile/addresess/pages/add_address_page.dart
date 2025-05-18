import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../data/models/add-address/address.dart';
import '../../../../shared/components/app_widgets.dart';
import '../../../../shared/components/base_widget_bloc.dart';
import '../bloc/add_address_cubit.dart';
import 'add_address_screen.dart';

class AddAddressPage extends BaseBlocWidget<dynamic, AddAddressCubit> {

  AddAddressPage({Key? key}) : super(key: key);
  @override
  bool detectRequiredTasks() {
    return false;
  }

  @override
  Widget buildWidget(BuildContext context,  state) {
    Address address = (getArguments(context) ?? Address()) as Address;
    return AppScaffold(
      title: strings.add_location,
      body: AddAddressScreen(
          address: address,
        onAddressAdded: (Address address) {
          bloc.addFavoriteAddresses(address, address.id != null);
        },
      ),
    );
  }


  @override
  void onSuccessDismissed() {
    super.onSuccessDismissed();
    Navigator.of(context).pop(true);
  }
}
