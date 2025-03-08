import 'dart:io';
import '../../../../../../../shared/components/index.dart';
import '../../../../../../common/common_state.dart';
import '../../../../../data/models/add_custodies_prams.dart';
import '../../../../../data/models/add_image_and_descriptions_components_prams.dart';
import '../../../../../data/models/mainReceiveVehicleArgument.dart';
import '../../../../../domain/entities/vehicleComponents.dart';
import '../../vehicle_components/widget/message_alart_widget.dart';
import '../../vehicle_components/widget/vehicle_components_item.dart';

class VehicleCovenantScreen extends BaseStatelessWidget {
  final Function(AddCustodiesPrams addCustodiesPrams) onNext;
  final Function() onCancel;
  StreamState<bool> addStream  ;

  final int handoverId;
  final bool isEdit;
  final List<VehicleComponents> vehicleComponents;
  Function(
      AddImageAndDescriptionsComponentsPrams
          addImageAndDescriptionsComponentsPrams,
      File?) onAddYes;

  VehicleCovenantScreen(
      {super.key,
      required this.onNext,
      required this.isEdit,
      required this.handoverId,
      required this.addStream,
      required this.onAddYes,
      required this.onCancel,
      required this.vehicleComponents});

  final _keyForm = GlobalKey<FormState>();
  List<int> yesIds = [];

  @override
  Widget build(BuildContext context) {
    _initData();
    return AppScaffold(
      bottomNavigationBar: RowButtons(
        onCancel: () => onCancel(),
        onSave: () {
          onSavePressed(context);
        },
        textSaveButton: strings.save_button,
        textCancelButton: strings.previous_button,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              MessageAllartWidget(),
              Expanded(
                child: ListView.builder(
                  itemCount: vehicleComponents.length,
                  itemBuilder: (context, index) => VehicleComponentsItem(
                    vehicleComponents: vehicleComponents[index],
                    addStream:addStream,
                    handoverId: handoverId,
                      isEdit:isEdit,
                    onAddYes: (params, file) {
                      onAddYesPressed(params, file, index);
                    },
                    onChangeStatus: (data, status) {
                      if (status == false) {
                        yesIds.remove(data.id);
                      }
                      vehicleComponents[index] = data;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _initData(){
    yesIds = VehicleComponents.getVehicleComponentIdsYES(vehicleComponents);
  }

  void onAddYesPressed(
      AddImageAndDescriptionsComponentsPrams params, File? file, int index) {
    if (_keyForm.currentState!.validate()) {
      if (yesIds.contains(vehicleComponents[index].id) == false){
        yesIds.add(vehicleComponents[index].id ?? 0);
      }
      vehicleComponents[index].isTrueAndSubmitted = true;
      onAddYes(params, file);
    }
  }

  void onSavePressed(BuildContext context) {
    if (isNotValidate()) {
      showErrorDialog(strings.please_add_all, context);
    } else {
      List<int> allNo =
      VehicleComponents.getVehicleComponentIdsNO(vehicleComponents);
      onNext(AddCustodiesPrams(
          vehicleHandoverId: handoverId,
          vehicleCustodiesStatuses: allNo
              .map((e) => VehicleCustodiesStatuse(
              custodyStatus: false, vehicleCustodyId: e))
              .toList()));
    }
  }

  bool isNotValidate() {
    bool isValidate = _keyForm.currentState!.validate();
    bool isNotValidate = vehicleComponents.any((element) =>
    element.status == null ||
        (element.status == true && element.isTrueAndSubmitted != true));
    List<int> noIds = VehicleComponents.getVehicleComponentIdsNO(vehicleComponents);
    bool isAllQuestionsAnswered = (noIds.length + yesIds.length) == vehicleComponents.length;
    return isNotValidate || !isValidate || !isAllQuestionsAnswered;
  }
}
