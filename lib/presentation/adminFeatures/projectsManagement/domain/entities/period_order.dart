
import '../../data/models/period_order_dto.dart';

class PeriodOrder {
  int? id;
  String? name;

  PeriodOrder({this.id, this.name});

   factory PeriodOrder.fromDto(PeriodOrderDto json) {
    return PeriodOrder(
      id: json.id,
      name: json.name,
    );
   }
}

