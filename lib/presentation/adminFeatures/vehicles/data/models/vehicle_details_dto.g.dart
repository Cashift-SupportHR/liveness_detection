// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDetailsDto _$VehicleDetailsDtoFromJson(Map<String, dynamic> json) =>
    VehicleDetailsDto(
      vehicleListOfImages: (json['vehicleListOfImages'] as List<dynamic>?)
          ?.map((e) => VehicleListOfImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      custodies: (json['custodies'] as List<dynamic>?)
          ?.map((e) => CustodyVehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicleCode: json['vehicleCode'] as String?,
      model: json['model'] as String?,
      yearOfManufacture: json['yearOfManufacture'] as int?,
      vehicleColorName: json['vehicleColorName'] as String?,
      vehicleColorId: json['vehicleColorId'] as int?,
      plateNumber: json['plateNumber'] as String?,
      licenseNumber: json['licenseNumber'] as String?,
      licenseExpiryDate: json['licenseExpiryDate'] as String?,
      specifications: json['specifications'] as String?,
      shiftId: json['shiftId'] as int?,
      vehicleImage: json['vehicleImage'] as String?,
      licenseImage: json['licenseImage'] as String?,
      vehicleBrandName: json['vehicleBrandName'] as String?,
      vehicleBrandId: json['vehicleBrandId'] as int?,
      companyName: json['companyName'] as String?,
      companyId: json['companyId'] as int?,
      projectName: json['projectName'] as String?,
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$VehicleDetailsDtoToJson(VehicleDetailsDto instance) =>
    <String, dynamic>{
      'vehicleListOfImages': instance.vehicleListOfImages,
      'id': instance.id,
      'shiftId': instance.shiftId,
      'vehicleCode': instance.vehicleCode,
      'model': instance.model,
      'yearOfManufacture': instance.yearOfManufacture,
      'vehicleColorName': instance.vehicleColorName,
      'vehicleColorId': instance.vehicleColorId,
      'plateNumber': instance.plateNumber,
      'licenseNumber': instance.licenseNumber,
      'licenseExpiryDate': instance.licenseExpiryDate,
      'specifications': instance.specifications,
      'vehicleImage': instance.vehicleImage,
      'licenseImage': instance.licenseImage,
      'vehicleBrandName': instance.vehicleBrandName,
      'vehicleBrandId': instance.vehicleBrandId,
      'companyName': instance.companyName,
      'companyId': instance.companyId,
      'projectName': instance.projectName,
      'custodies': instance.custodies,
      'projectId': instance.projectId,
    };

VehicleListOfImage _$VehicleListOfImageFromJson(Map<String, dynamic> json) =>
    VehicleListOfImage(
      faceId: json['faceId'] as int?,
      faceName: json['faceName'] as String?,
      imageId: json['imageId'] as int?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$VehicleListOfImageToJson(VehicleListOfImage instance) =>
    <String, dynamic>{
      'faceId': instance.faceId,
      'faceName': instance.faceName,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
    };
