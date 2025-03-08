import '../../data/models/ban_employee_tab_dto.dart';

class BanEmployeeTab {
  String? name;
  int? total;

  BanEmployeeTab({this.name, this.total});

  factory BanEmployeeTab.fromDto(BanEmployeeTabDto json) {
    return BanEmployeeTab(
      name: json.name,
      total: json.total,
    );
  }
}
