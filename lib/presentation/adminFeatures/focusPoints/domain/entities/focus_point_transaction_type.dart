
import '../../data/models/focus_point_transaction_type_dto.dart';

class FocusPointTransactionType {
  int? id;
  String? name;

  FocusPointTransactionType({this.id, this.name});

   factory FocusPointTransactionType.fromDto(FocusPointTransactionTypeDto json) {
    return FocusPointTransactionType(
      id: json.id,
      name: json.name,
    );
   }

}

