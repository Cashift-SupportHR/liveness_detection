import '../../data/models/order_status_dto.dart';

class OrderStatus {
  int? id;
  String? name;
  bool? isShowFreeLanceAcceptedType;
  bool? isShowProjects;
  bool? isShowShifts;
  bool? isShowDescription;

  OrderStatus({this.id, this.name, this.isShowFreeLanceAcceptedType, this.isShowProjects, this.isShowShifts, this.isShowDescription});

  factory OrderStatus.fromDto(OrderStatusDto json) {
    return OrderStatus(
      id: json.id,
      name: json.name,
      isShowFreeLanceAcceptedType: json.isShowFreeLanceAcceptedType,
      isShowProjects: json.isShowProjects,
      isShowShifts: json.isShowShifts,
      isShowDescription: json.isShowDescription,
    );
  }
}
