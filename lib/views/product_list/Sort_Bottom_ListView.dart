// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../theme/app_colors.dart';
// import '../../../theme/app_theme.dart';

// import '../../shopify_graphql/enums/src/sort_key_product_collection.dart';
// import '../checkout/bloc/checkout_screen_bloc.dart';

// class SortBottomListView extends StatefulWidget {
//   Function(FilterBottomList) sortListBy;

//   SortBottomListView(this.sortListBy);

//   @override
//   State<SortBottomListView> createState() => _SortBottomListViewState();
// }

// class FilterBottomList {
//   String title;
//   bool? valuee;
//   bool? reverse;
//   SortKeyProductCollection sortKeyProductCollection =
//       SortKeyProductCollection.BEST_SELLING;

//   FilterBottomList(
//       this.title, this.valuee, this.reverse, this.sortKeyProductCollection);
// }

// List<FilterBottomList> SortBottomList = [
//   FilterBottomList('Latest', false, false, SortKeyProductCollection.ID),
//   FilterBottomList(
//       'Best Selling', true, false, SortKeyProductCollection.BEST_SELLING),
//   FilterBottomList(
//       'Alphabetically A-Z', false, false, SortKeyProductCollection.TITLE),
//   FilterBottomList(
//       'Alphabetically Z-A', false, true, SortKeyProductCollection.TITLE),
//   FilterBottomList(
//       'Price low to high ', false, false, SortKeyProductCollection.PRICE),
//   FilterBottomList(
//       'Price high to low', false, true, SortKeyProductCollection.PRICE),
//   FilterBottomList(
//       'Item old to new ', false, false, SortKeyProductCollection.CREATED),
//   FilterBottomList(
//       'Item new to old', false, true, SortKeyProductCollection.CREATED),
// ];

// class _SortBottomListViewState extends State<SortBottomListView> {
//   String selected = "";
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         child: ListView.builder(
//             itemCount: SortBottomList.length,
//             itemBuilder: (context, index) {
//               return SizedBox(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         child: CheckboxListTile(
//                           activeColor: AppTheme.primaryColor,
//                           title: Text(
//                             SortBottomList[index].title,
//                             style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
//                                   color: AppTheme.black.withAlpha(120)
//                               ),
//                           ),
//                           value: SortBottomList[index].valuee,
//                           onChanged: (value) {
//                             if (value == true ) {
//                               widget.sortListBy.call(SortBottomList[index]);
                   
//                             } else {
//                               widget.sortListBy.call(SortBottomList[0]);
              
//                             }
//                             setState(() {
//                               for (var element in SortBottomList) {
//                                 element.valuee = false;
//                               }
//                               SortBottomList[index].valuee = value;
//                               selected =
//                                   "${SortBottomList[index].title}, ${SortBottomList[index].valuee}";
//                             });
//                           },
//                           controlAffinity: ListTileControlAffinity.leading,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ));
//             }));
//   }
// }
// // onChanged: (value) {
// //   setState(() {
// //     valueFirst = value!;
// //   });
// //   if (value == true) {
// //     context
// //         .read<CheckoutScreenBloc>()
// //         .add(CheckoutScreenSameAddressEvent());
// //   }
// // },
