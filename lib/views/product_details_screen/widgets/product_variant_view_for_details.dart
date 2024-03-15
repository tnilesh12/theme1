// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../../shopify_graphql/models/src/product/option/option.dart';
// import '../../../shopify_graphql/models/src/product/product.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';
// import '../../../theme/app_colors.dart';
// import '../../../theme/app_theme.dart';

// class ProductVariantDetialsView extends StatefulWidget {
//   final Product product;
//   final ProductVariant selectedVariant;
//   final bool AddToCartButton;

//   final Function(ProductVariant, bool) onSelectApply;

//   const ProductVariantDetialsView(this.product, this.selectedVariant,
//       this.onSelectApply, this.AddToCartButton,
//       {super.key});

//   @override
//   State<ProductVariantDetialsView> createState() =>
//       _ProductVariantBottomSheetViewState();
// }

// bool notavailable = false;
// String PriceOfProduct = "";

// class _ProductVariantBottomSheetViewState
//     extends State<ProductVariantDetialsView> {
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
//     return VerticalItem(widget.product.option!);
//   }

//   Widget VerticalItem(List<Option> items) {
//     return ListView.builder(
//       padding: EdgeInsets.zero,
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       // This next line does the trick.
//       //scrollDirection: Axis.vertical,
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
//                         left: 15.0, right: 20.0, top: index == 0 ? 0 : 10.0),
//                     child: Text(
//                       item.name.toString(),
//                       style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
//                                   color: AppTheme.black.withAlpha(120)
//                               ),
//                     ))),
//             Flexible(
//                 child: Container(
//               height: 70,
//               child: HorizontalItem(item.values!, index),
//             ))
//           ],
//         );
//       },
//     );
//   }

//   Widget HorizontalItem(List<String> option, int itemindex) {
//     return ListView.builder(
//       padding: EdgeInsets.zero,
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
//               print(AppLocalizations.of(context)!.selected + title);

//               for (int i = 0; i < widget.product.productVariants!.length; i++) {
//                 if (widget.product.productVariants![i].title.toString() ==
//                     title) {
//                   notavailable =
//                       widget.product.productVariants![i].availableForSale!;
//                   PriceOfProduct =
//                       widget.product.productVariants![i].price!.formattedPrice;
//                   widget.onSelectApply.call(
//                       widget.product.productVariants![i],
//                       widget.AddToCartButton);
//                   break;
//                 }
//               }



//               setState(() {});
//             },
//             child: Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.only(left: 10, right: 10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
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
