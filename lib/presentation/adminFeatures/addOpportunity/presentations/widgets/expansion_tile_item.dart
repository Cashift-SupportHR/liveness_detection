import 'package:flutter/material.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';


class ExpansionTileItem extends StatelessWidget {
  final String title;
  final String? description;
  const ExpansionTileItem({Key? key, required this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(title, style: kTextLight.copyWith(fontSize: 13)),
        ExpansionTile(
          title: Text(description ?? '', overflow: TextOverflow.ellipsis, style: kTextRegularGrey.copyWith(fontSize: 10),),
          tilePadding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text(description ?? '',style: kTextRegularGrey.copyWith(fontSize: 10),),
            )
          ],
        ),
        const Divider(),
      ],
    );
  }
}
