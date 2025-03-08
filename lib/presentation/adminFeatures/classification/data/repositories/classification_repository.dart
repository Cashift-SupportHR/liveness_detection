import 'dart:async';

import 'package:injectable/injectable.dart';

import '../datasource/classification_provider.dart';
import '../models/index.dart';

@injectable
class ClassificationRepository {
  final ClassificationAPI _api;

  ClassificationRepository(this._api);

  Future<List<ClassificationDto>> fetchClassification(int type) async {
    final response = await _api.fetchClassification(type);
    return response.payload!;
  }

  Future<String> deleteClassification(int id) async {
    final response = await _api.deleteClassification(id);
    return response.message!;
  }

  Future<String> addEditClassification({required AddEditClassificationPrams addEditClassificationPrams}) async {
    final response = await _api.addEditClassification(addEditClassificationPrams.id, addEditClassificationPrams.companyId, addEditClassificationPrams.nameAr,
        addEditClassificationPrams.nameEn, addEditClassificationPrams.description);
    return response.message!;
  }
}
