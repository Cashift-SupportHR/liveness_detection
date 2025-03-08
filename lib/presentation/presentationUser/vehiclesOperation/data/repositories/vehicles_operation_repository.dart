import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../../data/models/api_response.dart';
import '../../../../adminFeatures/vehicles/data/models/vehicle_details_dto.dart';
import '../../../../shared/models/common_list_item.dart';
import '../../domain/entities/gas_station_trip.dart';
import '../../domain/entities/index.dart';
import '../../domain/entities/receive_vehicle_details.dart';
import '../datasource/vehicles_operation_provider.dart';
import '../models/add_round_trip_fill_station_prams.dart';
import '../models/confirm_receive_vehicle_params.dart';
import '../models/index.dart';

@injectable
class ReceiveVehiclesRepository {
  final ReceiveVehiclesAPI _api;

  ReceiveVehiclesRepository(this._api);

  Future<List<VehicleComponents>> fetchVehicleComponents() async {
    final response = await _api.fetchVehicleComponents();
    return VehicleComponents.fromDtoList(response.payload!);
  }

  Future<List<VehicleComponents>> fetchVehicleCustodies(
      int vehicleId) async {
    final response = await _api.fetchVehicleCustodies(vehicleId);
    return VehicleComponents.fromDtoList(response.payload!);
  }

  Future<List<ReceiveVehicleDto>> fetchReceiveVehicle(bool isComplete) async {
    final response = await _api.fetchReceiveVehicle(isComplete);
    return response.payload!;
  }

  Future<VehicleDetailsDto> fetchVehicleByCode(String code) async {
    final response = await _api.fetchVehicleByCode(code);
    return response.payload!;
  }

  Future<CreateVehicleHandoverDto> createVehicleHandover(
      CreateVehicleHandoverPrams createVehicleHandoverPrams) async {
    final response =
        await _api.createVehicleHandover(createVehicleHandoverPrams);
    return response.payload!;
  }

  Future<ApiResponse> addComponents(
      AddComponentsPrams addComponentsPrams) async {
    final data = await _api.addComponents(addComponentsPrams);
    return ApiResponse(
        status: data.status, message: "onNext", payload: data.payload);
  }

  Future<ApiResponse> addCustodies(AddCustodiesPrams addCustodiesPrams) async {
    final data = await _api.addCustodies(addCustodiesPrams);
    return ApiResponse(
        status: data.status, message: "onNext", payload: data.payload);

  }

  Future<ApiResponse> addImageAndDescriptionsComponents(
      {required AddImageAndDescriptionsComponentsPrams
          addImageAndDescriptionsComponentsPrams,
      File? file}) async {
    return await _api.addImageAndDescriptionsComponents(
        addImageAndDescriptionsComponentsPrams, file);
  }

  Future<ApiResponse> addImageAndDescriptionsCustodies(
      {required AddImageAndDescriptionsComponentsPrams
          addImageAndDescriptionsComponentsPrams, File? file}) async {
    return await _api.addImageAndDescriptionsCustodies(
        addImageAndDescriptionsComponentsPrams, file);
  }

  Future<List<CommonListItem>> fetchAllFreeLancerVehiclesZones() async {
    final data = await _api.fetchAllFreeLancerVehiclesZones();
    return CommonListItem.fromDtoList(data.payload!);
  }

  Future<List<CommonListItem>> fetchAllRoundTypes() async {
    final data = await _api.fetchAllRoundTypes();
    return CommonListItem.fromDtoList(data.payload!);
  }

  Future<List<RoundTypeTermsAndCondition>> fetchRoundTypeTermsAndCondition(int roundTypeId) async {
    final data = await _api.fetchRoundTypeTermsAndCondition(roundTypeId);
    return RoundTypeTermsAndCondition.fromListDto(data.payload!);
  }

  Future<ApiResponse> addRoundTrip(AddRoundTripParams addRoundTripParams) async {
    return await _api.addRoundTrip(addRoundTripParams);
  }

  Future<ApiResponse> endRoundTrip(int tripId) async {
    return await _api.endRoundTrip(tripId);
  }

  Future<CurrentRoundTrip> fetchCurrentTrip() async {
    final res =  await _api.fetchCurrentTrip();
    return CurrentRoundTrip.fromDto(res.payload ?? CurrentRoundTripDto());
  }

  Future<ApiResponse> addRoundTripDetails(AddRoundTripDetailsParams params) async {
    return await _api.addRoundTripDetails(params);
  }

  Future<List<RoundTripDetails>> fetchRoundTripDetails(int roundTripId) async {
    final res = await _api.fetchRoundTripDetails(roundTripId);
    return RoundTripDetails.fromListDto(res.payload!);
  }

   Future<List<GasStationTrip>> fetchGasStationTrip(int roundTripId) async {
    final res = await _api.fetchGasStationTrip(roundTripId);
    return GasStationTrip.fromDtoList(res.payload!);
  }

  Future<ReceiveVehicleDetails> fetchReceiveVehicleDetails(int id) async {
    final res = await _api.fetchReceiveVehicleDetails(id);
    return ReceiveVehicleDetails.fromDto(res.payload!);
  }

  Future<String> confirmRejectReceiveVehicle(ConfirmReceiveVehicleParams params) async {
    final res =  await _api.confirmRejectReceiveVehicle(params);
    return res.message!;
  }
  Future<ApiResponse> addRoundTripFillStation(AddRoundTripFillStationPrams params) async {
    final res =  await _api.addRoundTripFillStation(params);
    return res;
  }


}
