// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_covenant_vehicle_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCovenantVehicleParams _$AddCovenantVehicleParamsFromJson(
        Map<String, dynamic> json) =>
    AddCovenantVehicleParams(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      description: json['Description'] as String?,
      custodyImagePath: json['CustodyImagePath'] as String?,
      custodyImage: _$JsonConverterFromJson<String, File>(
          json['CustodyImage'], const FileJsonConverter().fromJson),
      vehicleId: json['VehicleId'] as int?,
    );

Map<String, dynamic> _$AddCovenantVehicleParamsToJson(
    AddCovenantVehicleParams instance) {
  final val = <String, dynamic>{
    'Id': instance.id,
    'Name': instance.name,
    'Description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('CustodyImagePath', instance.custodyImagePath);
  val['CustodyImage'] = _$JsonConverterToJson<String, File>(
      instance.custodyImage, const FileJsonConverter().toJson);
  val['VehicleId'] = instance.vehicleId;
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
