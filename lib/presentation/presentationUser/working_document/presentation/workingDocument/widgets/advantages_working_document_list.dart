import 'package:flutter/material.dart';

import '../../../../resources/colors.dart';
import '../../../../resources/constants.dart';
import '../../../data/models/working_document_dto.dart';

///  Created by harbey on 8/26/2023.
class AdvantagesWorkingDocumentList extends StatelessWidget {
  final List<BenefitDocument> data;

  const AdvantagesWorkingDocumentList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: data.length,
      shrinkWrap:   true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 16),
      itemBuilder: (context, index) {
        return  AdvantageWorkingDocumentItem(
          title: data[index].name ?? '',
        );
      },
    );
  }
}

class AdvantageWorkingDocumentItem extends StatelessWidget {
  final String title;
  const AdvantageWorkingDocumentItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = kTextRegular.copyWith(fontSize: 14, color: kBlack.withOpacity(0.7));
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 8, start: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: textStyle,
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              title,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}

