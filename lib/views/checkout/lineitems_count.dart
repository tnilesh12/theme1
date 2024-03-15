// import 'package:flutter/material.dart';
// import 'package:theme1/theme/custom_text_theme.dart';
// import 'package:theme1/theme/my_text_style.dart';
// // import '../../../shopify_graphql/models/models.dart';


// import '../product_details_screen/widgets/product_item_count_view.dart';

// class ItemCountView {
//   Widget getItemCountView(BuildContext context) {//, Checkout checkout) {
//     // if(checkout.lineItems == null ) {
//     //   return SizedBox.shrink();
//     // }

//     return Container(
//               color: Theme.of(context).colorScheme.background,
//         padding: EdgeInsets.only(top: 15,left: 15,right: 15),
//         height: checkout.lineItems!.length * 110.0,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               padding: EdgeInsets.only(bottom: 10),
//               child: Text(
//                 "Items",
//                 // AppLocalizations.of(context)!.items,
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutLineItems, context)
//                 // style: Theme.of(context)
//                 //     .textTheme
//                 //     .bodyLarge!
//                 //     .copyWith(color: Colors.black,fontFamily: 'Cinzel'),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: checkout.lineItems!.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: 50,
//                               height: 50,
//                               child: FadeInImage.assetNetwork(placeholder: "assets/images/placeholder-image.jpg", image: checkout.lineItems![index]
//                                       .variant!.image!.originalSrc
//                                       .toString()),
//                             ),
//                             Expanded(
//                                 child: Container(
//                               margin: EdgeInsets.only(left: 10, bottom: 5),
//                               width: MediaQuery.of(context).size.width,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     margin: EdgeInsets.only(bottom: 5),
//                                     child: Text(
//                                       checkout.lineItems![index].title
//                                           .toString(),
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutLineItemsDefault, context),
                                     

//                                       // style: Theme.of(context)
//                                       //     .textTheme
//                                       //     .bodySmall!
//                                       //     .copyWith(color: Colors.black,fontFamily: 'Cinzel'),
//                                       maxLines: 2,
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.only(bottom: 5),
//                                     child: Text(
//                                       checkout.lineItems![index].variant!.title
//                                           .toString(),
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutLineItemsDefault, context)
                              
//                                       // style: Theme.of(context)
//                                       //     .textTheme
//                                       //     .bodySmall!
//                                       //     .copyWith(color: Colors.black,fontFamily: 'Cinzel'),
//                                     ),
//                                   ),
//                                   Container(
//                                       margin: EdgeInsets.only(bottom: 5),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Container(
//                                             child: Text(
//                                               checkout
//                                                   .lineItems![index]
//                                                   .variant!
//                                                   .priceV2!
//                                                   .formattedPrice
//                                                   .toString(),
                                       
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutLineItemsDefault, context),
//                                               // style: Theme.of(context)
//                                               //     .textTheme
//                                               //     .bodySmall!
//                                               //     .copyWith(
//                                               //         color: Colors.black,fontFamily: 'Cinzel'),
//                                               maxLines: 3,
//                                             ),
//                                           ),
//                                           Container(
//                                             child: Text(
//                                               "X" +
//                                                   checkout.lineItems![index]
//                                                       .quantity
//                                                       .toString(),
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutLineItemsDefault, context),
//                                               // style: Theme.of(context)
//                                               //     .textTheme
//                                               //     .bodySmall!
//                                               //     .copyWith(
//                                               //         color: Colors.black,fontFamily: 'Cinzel'),
//                                             ),
//                                           ),
//                                           Container(
//                                             child: Text(
//                                               checkout
//                                                   .lineItems![index]
//                                                   .variant!
//                                                   .priceV2!
//                                                   .formattedPrice
//                                                   .toString(),
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutLineItemsDefault, context),
//                                               // style: Theme.of(context)
//                                               //     .textTheme
//                                               //     .bodySmall!
//                                               //     .copyWith(
//                                               //         color: Colors.black,fontFamily: 'Cinzel'),
//                                             ),
//                                           ),
//                                         ],
//                                       )),
//                                 ],
//                               ),
//                             )),
//                           ],
//                         ),
//                         Divider(
//                           thickness: 1,
//                         ),
//                       ],
//                     );
//                   }),
//             )
//           ],
//         ));
//   }
// }
