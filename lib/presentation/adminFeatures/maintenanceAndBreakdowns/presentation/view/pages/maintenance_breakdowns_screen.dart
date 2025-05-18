import 'package:flutter/material.dart';
 import '../../../../../shared/components/base_stateless_widget.dart';
import '../../../domain/entities/maintenance.dart';
import '../Widget/maintenance_breakdowns_item.dart';


class MaintenanceBreakdownsScreen extends BaseStatelessWidget {
 final String code;
 int  tapId;
  final List<Maintenance> data;
  final Function(Maintenance) onAction;

  MaintenanceBreakdownsScreen(
      {Key? key,
      required this.code,
      required this.data,
      required this.tapId,
       required this.onAction
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:data.length,
      itemBuilder: (context, index) {
        return MaintenanceBreakdownsItem(
          code: code,
          tapId: tapId,
          item: data[index],
          onAction: () => onAction(data[index]),
        );
      },
    );
  }
}
