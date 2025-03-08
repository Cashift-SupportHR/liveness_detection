// import 'package:flutter/material.dart';
// import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
// import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';
// import 'package:shiftapp/presentation/shared/components/base_stateless_widget.dart';
// import 'package:shiftapp/presentation/shared/components/underline_widget.dart';
//
// import '../../../shared/components/decorations/decorations.dart';
//
// class  OpportunityConditions extends BaseStatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     int index = 2;
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: Decorations.decorationContainer,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             strings.opportunity_terms,
//             style: kTextSemiBold.copyWith(
//               color: kPrimary,
//               fontSize: 24,
//             ),
//           ),
//           const UnderlineWidget(),
//           Padding(
//             padding: const EdgeInsets.only(right: 8),
//             child: StatefulBuilder(
//               builder: (context, setState) {
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children:
//                   // show more than 3 conditions
//                   conditions.length > 2
//                       ? [
//                           ...conditions
//                               .sublist(0, index)
//                               .map((e) => OpportunityConditionItem(text: e))
//                               .toList(),
//                           GestureDetector(
//                             onTap: () {
//                               if (index == conditions.length) {
//                                 index = 2;
//                               } else {
//                                 index = conditions.length;
//                               }
//                               setState(() {});
//                             },
//                             child: Text(
//                               index == conditions.length
//                                   ? strings.show_less
//                                   : strings.show_more,
//                               style: kTextRegular.copyWith(
//                                 color: kPrimary,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                   ]
//                       // show all conditions
//                       : conditions.map((e) => OpportunityConditionItem(text: e)).toList(),
//                 );
//               }
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class OpportunityConditionItem extends StatelessWidget {
//   final String text;
//   const OpportunityConditionItem({Key? key, required this.text}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(top: 8),
//             child: Icon(
//               Icons.circle,
//               color: kButterScotch,
//               size: 6,
//             ),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: Text(
//               text,
//               style: kTextLight.copyWith(
//                 color: kPurplishGrey,
//                 fontSize: 12,
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//
//   }
// }
