// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../../shopify_graphql/models/src/product/option/option.dart';
// import '../../../shopify_graphql/models/src/product/product.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';
// import '../../../theme/app_colors.dart';
// import '../../../theme/app_theme.dart';

// class ProductVariantBottomSheetView extends StatefulWidget {
//   final Product product;
//   final ProductVariant selectedVariant;
//   final bool AddToCartButton;

//   final Function(ProductVariant, bool) onSelectApply;

//   const ProductVariantBottomSheetView(this.product, this.selectedVariant,
//       this.onSelectApply, this.AddToCartButton,
//       {super.key});

//   @override
//   State<ProductVariantBottomSheetView> createState() =>
//       _ProductVariantBottomSheetViewState();
// }

// bool notavailable = false;
// String PriceOfProduct = "";

// class _ProductVariantBottomSheetViewState
//     extends State<ProductVariantBottomSheetView> {
//   List<String> SelectedItemName = [];

//   @override
//   void initState() {
//     super.initState();
//     notavailable = widget.selectedVariant.availableForSale!;
//     SelectedItemName = widget.selectedVariant.title.toString().split(" / ");
//     PriceOfProduct = widget.selectedVariant.price!.formattedPrice;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppTheme.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//               padding: EdgeInsets.only(left: 10, right: 10, top: 10),
//               child: Text(
//                 widget.product.title.toString(),
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
//                                   color: AppTheme.black
//                               ),
//               )),
//           Padding(
//               padding: EdgeInsets.only(left: 10, right: 10),
//               child: Text(
//                 widget.product.vendor.toString(),
//                 style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
//                                   color: AppTheme.black
//                               ),
//               )),
//           Padding(
//               padding: EdgeInsets.only(left: 10, right: 10),
//               child: Text(
//                 PriceOfProduct,
//                 style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
//                                   color: AppTheme.priceTagColor
//                               ),
//               )),
//           notavailable == false
//               ? Container(
//                   decoration: BoxDecoration(
//                       color: AppTheme.ErrorColor.withAlpha(50),
//                       border: Border.all(
//                         color: AppTheme.ErrorColor.withAlpha(50),
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                   padding: EdgeInsets.all(5),
//                   margin: EdgeInsets.all(10),
//                   child: Text(
//                     AppLocalizations.of(context)!.not_available,
//                     maxLines: 2,
//                     style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
//                                   color: AppTheme.ErrorColor
//                               ),
//                   ))
//               : Container(
//                   decoration: BoxDecoration(
//                       color: AppTheme.SuccessColor.withAlpha(50),
//                       border: Border.all(
//                         color: AppTheme.SuccessColor.withAlpha(50),
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                   padding: EdgeInsets.all(5),
//                   margin: EdgeInsets.all(10),
//                   child: Text(
//                     AppLocalizations.of(context)!.available,
//                     style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
//                                   color: AppTheme.SuccessColor
//                               ),
//                   ),
//                 ),
//           Flexible(
//               child:
//               VerticalItem(widget.product.option!)
//              ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             height: 50,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: AppTheme.lightBorder.withAlpha(50),
//                       border: Border.all(
//                         color: AppTheme.lightBorder.withAlpha(50),
//                       ),
//                     ),
//                     child: TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Text(
//                           AppLocalizations.of(context)!.close,
//                           style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
//                                   color: AppTheme.black
//                               ),
//                         )),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: AppTheme.primaryColor,
//                       border: Border.all(
//                         color: AppTheme.primaryColor,
//                       ),
//                     ),
//                     child: TextButton(
//                         onPressed: () {
//                           String title = SelectedItemName.join(" / ");

//                           for (int i = 0;
//                               i < widget.product.productVariants!.length;
//                               i++) {
//                             if (widget.product.productVariants![i].title
//                                     .toString() ==
//                                 title) {
//                               widget.onSelectApply.call(
//                                   widget.product.productVariants![i],
//                                   widget.AddToCartButton);
//                               break;
//                             }
//                           }

//                           Navigator.of(context).pop();
//                         },
//                         child: Text(
//                           widget.AddToCartButton
//                               ? AppLocalizations.of(context)!.addtocart
//                               : AppLocalizations.of(context)!.apply,
//                           style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
//                                   color: AppTheme.buttonbackColor
//                               ),
//                         )),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget VerticalItem(List<Option> items)
//   {
//     return  ListView.builder(
//       // This next line does the trick.
//       scrollDirection: Axis.vertical,
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         final item = items[index];

//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Flexible(
//                 child: Padding(
//                     padding: EdgeInsets.only(
//                         left: 20.0, right: 20.0, top: 20.0),
//                     child: Text(
//                       item.name.toString(),
//                       style:TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
//                                   color: AppTheme.black.withAlpha(120)
//                               ),
//                     ))),
//             Flexible(
//                 child: Container(
//                   height: 50,
//                   child: HorizontalItem(item.values!, index),
//                 ))
//           ],
//         );
//       },
//     );
//   }

//   Widget HorizontalItem(List<String> option, int itemindex) {
//     return ListView.builder(
//       // This next line does the trick.
//       scrollDirection: Axis.horizontal,
//       itemCount: option.length,
//       itemBuilder: (context, index) {
//         bool selected = false;
//         if (SelectedItemName[itemindex] != null) {
//           selected = SelectedItemName[itemindex].trim().toLowerCase() ==
//               option[index].toString().trim().toLowerCase();
//         }

//         return InkWell(
//             onTap: () {
//               SelectedItemName[itemindex] = option[index].toString();
//               String title = SelectedItemName.join(" / ");
//               print("selected..." + title);

//               for (int i = 0; i < widget.product.productVariants!.length; i++) {
//                 if (widget.product.productVariants![i].title.toString() ==
//                     title) {
//                   notavailable =
//                       widget.product.productVariants![i].availableForSale!;
//                   PriceOfProduct =
//                       widget.product.productVariants![i].price!.formattedPrice;
//                   break;
//                 }
//               }

//               setState(() {});
//             },
//             child: Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.only(left: 10, right: 10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: selected
//                     ? AppTheme.black.withAlpha(50)
//                     : AppTheme.lightBorder.withAlpha(50),
//                 border: Border.all(
//                   color: selected
//                       ? AppTheme.black.withAlpha(50)
//                       : AppTheme.lightBorder.withAlpha(50),
//                 ),
//               ),
//               child: Center(
//                   child: Text(option[index].toString(),
//                       style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
//                                   color: AppTheme.black.withAlpha(120)
//                               ))),
//             ));
//       },
//     );
//   }
// }
