import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';

import '../../domain/entities/pledge_generalization.dart';
import '../widgets/pledges_and_generalization_item.dart';

class PledgesAndGeneralizationScreen extends StatelessWidget {
  final int type;
  final List<PledgeGeneralization> data;
  final Function(int) onReset;
  const PledgesAndGeneralizationScreen({Key? key, required this.data, required this.type, required this.onReset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kWhite,
      child: ListView.builder(
        itemCount: data.length,
        shrinkWrap:   true,
        padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        itemBuilder: (context, index) {
          return  PledgesAndGeneralizationItem(
            type: type,
            item: data[index],
            onReset: () {
              onReset(data[index].id ?? 0);
            },
          );
        },
      ),
    );
  }
}
