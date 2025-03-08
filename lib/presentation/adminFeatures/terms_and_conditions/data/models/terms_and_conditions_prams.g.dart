// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_and_conditions_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermsAndConditionsPrams _$TermsAndConditionsPramsFromJson(
        Map<String, dynamic> json) =>
    TermsAndConditionsPrams(
      id: json['id'] as int?,
      companyId: json['companyId'] as int?,
      conditionEn: json['conditionEn'] as String?,
      conditionAr: json['conditionAr'] as String?,
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$TermsAndConditionsPramsToJson(
    TermsAndConditionsPrams instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'companyId': instance.companyId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('projectId', instance.projectId);
  val['conditionEn'] = instance.conditionEn;
  val['conditionAr'] = instance.conditionAr;
  return val;
}
