import 'dart:io';

import '../../../../../data/models/add_components_prams.dart';
import '../../../../../data/models/add_image_and_descriptions_components_prams.dart';
import '../../../../../domain/entities/vehicleComponents.dart';

abstract class VehicleComponentsIntents {}

class SubmitVehicleComponents extends VehicleComponentsIntents {
  final AddComponentsPrams data;
  final List<VehicleComponents> vehicleComponents;
  SubmitVehicleComponents(this.data, {required this.vehicleComponents});
}
class CancelVehicleComponents extends VehicleComponentsIntents {
  final List<VehicleComponents> vehicleComponents;
  CancelVehicleComponents({required this.vehicleComponents});

}

class SubmitQuestionAnswer extends VehicleComponentsIntents {
  final AddImageAndDescriptionsComponentsPrams addImageAndDescriptionsComponentsPrams;
     final File? files;


  SubmitQuestionAnswer({required this.addImageAndDescriptionsComponentsPrams, this.files});
}
