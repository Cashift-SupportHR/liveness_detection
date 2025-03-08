import 'dart:async';

import 'package:injectable/injectable.dart';

import '../datasource/pledges_and_generalization_provider.dart';
import '../models/pledge_generalization_dto.dart';

@injectable
class PledgesAndGeneralizationRepository {

  final PledgesAndGeneralizationAPI _api;

  PledgesAndGeneralizationRepository(this._api);


  Future<List<PledgeGeneralizationDto>> fetchPledgesAndGeneralization(int type) async {
    final response = await _api.fetchPledgesAndGeneralization(type);
    return response.payload!;
  }

  Future<String> resetPledgesAndGeneralization(int id) async {
    final response = await _api.resetPledgesAndGeneralization(id);
    return response.message!;
  }

}
