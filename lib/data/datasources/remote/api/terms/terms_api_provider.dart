
import 'package:injectable/injectable.dart';
import 'package:shiftapp/data/models/api_response.dart';
import '../../../../../network/source/user_endpoint.dart';
import 'package:shiftapp/domain/entities/terms/terms_item.dart';

@Injectable()
class TermsAPI {
  final UserEndpoint api;

  TermsAPI(this.api);

  Future<ApiResponse<List<TermsItem>>> fetchPublicTermsAndCondition() async {
    return await api.fetchPublicTermsAndCondition();
  }

}
