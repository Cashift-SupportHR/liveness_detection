import 'dart:io';

import '../../../../../data/models/add_components_prams.dart';
import '../../../../../data/models/add_image_and_descriptions_components_prams.dart';

abstract class VehicleComponentsIntents {}

class SubmitVehicleComponents extends VehicleComponentsIntents {
  final AddComponentsPrams data;
  SubmitVehicleComponents(this.data);
}
class CancelVehicleComponents extends VehicleComponentsIntents {

}

class SubmitQuestionAnswer extends VehicleComponentsIntents {
  final AddImageAndDescriptionsComponentsPrams addImageAndDescriptionsComponentsPrams;
     final File? files;


  SubmitQuestionAnswer({required this.addImageAndDescriptionsComponentsPrams, this.files});
}
