import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shiftapp/data/models/api_response.dart';
import 'package:shiftapp/presentation/adminFeatures/vehicles/data/models/add_covenant_vehicle_params.dart';
import 'package:shiftapp/presentation/adminFeatures/vehicles/data/models/add_vehicle_params.dart';
import 'package:shiftapp/presentation/adminFeatures/vehicles/data/models/vehicle_image_params.dart';
import 'package:shiftapp/presentation/adminFeatures/vehicles/data/models/vehicle_details_dto.dart';
import 'package:shiftapp/presentation/adminFeatures/vehicles/domain/entities/index.dart';

import '../../../../../data/models/salary-definition-request/down_load_salary_definition.dart';
import '../../../../presentationUser/vehiclesOperation/domain/entities/receive_vehicle_details.dart';
import '../../../../shared/models/common_list_item.dart';
import '../../domain/entities/covenant_vehicle.dart';
import '../../domain/entities/vehicle_image_face.dart';
import '../../domain/entities/vehicle_receive_request.dart';
import '../../domain/entities/vehicle_violation.dart';
import '../datasource/vehicles_provider.dart';
import '../models/action_vehicle_receive_request_params.dart';
import '../models/add_insurance_prams.dart';
import '../models/add_vehicle_violation_attachment_params.dart';
import '../models/add_vehicle_violation_params.dart';
import '../models/final_action_vehicle_receive_request_params.dart';
import '../models/insurance_types_dto.dart';
import '../models/insurances_dto.dart';
import '../models/vehicles_dto.dart';

@injectable
class VehiclesRepository {
  final VehiclesAPI _api;

  VehiclesRepository(this._api);

  Future<List<VehiclesDto>> fetchVehicles() async {
    final response = await _api.fetchVehicles();
    return response.payload!;
  }

  Future<List<InsuranceTypesDto>> fetchInsuranceTypes() async {
    final response = await _api.fetchInsuranceTypes();
    return response.payload!;
  }

  Future<List<InsurancesDto>> fetchInsurancesByVehicleId(int vehicleId) async {
    final response = await _api.fetchInsurancesByVehicleId(vehicleId);
    return response.payload!;
  }

  Future<VehicleDetails> fetchVehicleById(int id) async {
    final response = await _api.fetchVehicleById(id);
    return VehicleDetails.fromDto(response.payload!);
  }

  Future<ApiResponse> deleteVehicle(int id) async {
    return await _api.deleteVehicle(id);
  }

  Future<List<CommonListItem>> fetchVehiclesTypes() async {
    final data = await _api.fetchVehiclesTypes();
    return CommonListItem.fromDtoList(data.payload!);
  }

  Future<List<CommonListItem>> fetchVehiclesColors() async {
    final data = await _api.fetchVehiclesColors();
    return CommonListItem.fromDtoList(data.payload!);
  }

  Future<ApiResponse> deleteInsurance(int id) async {
    return await _api.deleteInsurance(id);
  }

  Future<int> addVehicle(AddVehicleParams params) async {
    print("params.vehicleImageFile ${params.toJson()}");
    final data = await _api.addVehicle(
      params.vehicleCode,
      params.model,
      params.yearOfManufacture,
      params.plateNumber,
      params.licenseNumber,
      params.licenseExpiryDate,
      params.specifications,
      params.vehicleImageFile!,
      params.vehicleBrandId,
      params.companyId,
      params.projectId,
      params.vehicleColorId,
    );
    return data.payload?.id ?? 0;
  }

  Future<ApiResponse> addInsurance(AddInsurancePrams params) async {
    return await _api.addInsurance(
      params.insuranceNumber,
      params.insuranceProvider,
      params.insuranceExpiryDate,
      params.vehicleId,
      params.vehicleInsuranceTypeId,
      params.insuranceImage ?? File(""),
    );
  }

  Future<ApiResponse> editInsurance(AddInsurancePrams params) async {
    return await _api.editInsurance(
      params.id ?? 0,
      params.insuranceNumber ?? "",
      params.insuranceProvider ?? "",
      params.insuranceExpiryDate ?? "",
      params.vehicleId ?? 0,
      params.vehicleInsuranceTypeId ?? "",
      insuranceImage: params.insuranceImage,
    );
  }

  Future<ApiResponse> editVehicle(AddVehicleParams params) async {
    return await _api.editVehicle(
      params.id,
      params.vehicleCode,
      params.model,
      params.yearOfManufacture,
      params.plateNumber,
      params.licenseNumber,
      params.licenseExpiryDate,
      params.specifications,
      params.vehicleImage,
      params.vehicleBrandId,
      params.companyId,
      params.projectId,
      params.vehicleColorId,
      vehicleImageFile: params.vehicleImageFile,
    );
  }

  Future<ApiResponse> addVehicleImages(VehicleImageParams params) async {
    return await _api.addVehicleImages(
      params.images,
      params.vehicleId,
    );
  }

  Future<List<VehicleImageFace>> fetchVehiclesImagesFaces() async {
    final response = await _api.fetchVehiclesImagesFaces();
    return VehicleImageFace.fromListDto(response.payload!);
  }

  Future<List<CovenantVehicle>> fetchCovenants(int id) async {
    final response = await _api.fetchCovenants(id);
    return CovenantVehicle.fromJsonList(response.payload!);
  }

  Future<ApiResponse> addCovenant(AddCovenantVehicleParams params) async {
    print("params.custodyImage ${params.toJson()}");
    return await _api.addCovenant(
      params.vehicleId,
      params.name,
      params.description,
      params.custodyImagePath,
      params.custodyImage!,
    );
  }

  Future<ApiResponse> editCovenant(AddCovenantVehicleParams params) async {
    print("params.custodyImage ${params.toJson()}");
    return await _api.editCovenant(
      params.id,
      params.vehicleId,
      params.name,
      params.description,
      params.custodyImagePath,
      custodyImage: params.custodyImage,
    );
  }

  Future<ApiResponse> deleteCovenant(int id) async {
    return await _api.deleteCovenant(id);
  }

  Future<List<ContractViolation>> fetchVehicleViolations() async {
    final res = await _api.fetchVehicleViolations();
    return ContractViolation.fromDtoList(res.payload!);
  }

  Future<ContractViolation> fetchVehicleViolationsById(int id) async {
    final res = await _api.fetchVehicleViolationsById(id);
    return ContractViolation.fromDto(res.payload!);
  }

  Future<ApiResponse> addContractViolation(AddVehicleViolationParams params) async {
    return await _api.addContractViolation(params);
  }

  Future<List<CommonListItem>> fetchVehicleViolationTypes() async {
    final res = await _api.fetchVehicleViolationTypes();
    return CommonListItem.fromDtoList(res.payload!);
  }

  Future<ApiResponse> addContractViolationAttachments(AddVehicleViolationAttachmentParams params) async {
    return await _api.addContractViolationAttachments(
      params.files ?? [],
      params.id ?? 0,
    );
  }

  Future<List<CommonListItem>> fetchActionVehicleReceiveRequestStatues() async {
    final res = await _api.fetchActionVehicleReceiveRequestStatues();
    return CommonListItem.fromDtoList(res.payload!);
  }

  Future<List<CommonListItem>> fetchVehicleReceiveRequestTypesTabs() async {
    final res = await _api.fetchVehicleReceiveRequestTypesTabs();
    return CommonListItem.fromDtoList(res.payload!);
  }

  Future<List<VehicleReceiveRequest>> fetchVehicleReceiveRequestsByType(int type) async {
    final res = await _api.fetchVehicleReceiveRequestsByType(type);
    res.payload?.sort((a, b) => a.vehicleHandoverTime!.compareTo(b.vehicleHandoverTime!));
    return VehicleReceiveRequest.fromDtoList(res.payload!);
  }

  Future<ApiResponse> actionVehicleReceiveRequest(ActionVehicleReceiveRequestParams  params) async {
    final res = await _api.actionVehicleReceiveRequest(params);
    return res;
  }

  Future<ApiResponse> finalActionVehicleReceiveRequest(FinalActionVehicleReceiveRequestParams  params) async {
    final res = await _api.finalActionVehicleReceiveRequest(params);
    return res;
  }

  Future<List<CommonListItem>> fetchVehicleEmployeeByProject(int projectId) async {
    final res = await _api.fetchVehicleEmployeeByProject(projectId);
    return CommonListItem.fromDtoList(res.payload!);
  }

  Future<ApiResponse<DownLoadSalaryDefinition>> qrCodeVehicle(int vehicleId ) async {
    final response = await _api.qrCodeVehicle (vehicleId );
    return response;
  }

}
