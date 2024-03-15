// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import '../../../shopify_graphql/models/models.dart';
// import '../../../shopify_graphql/models/src/product/option/option.dart';
// import '../../../theme/app_theme.dart';
// import '../../../views/product_details_screen/widgets/product_variant_bottomsheet.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';
// import '../../../theme/app_colors.dart';

// class ProductVariantsView extends StatelessWidget {
//   final Product product;
//   final ProductVariant selectedVariant;
//   final bool AddToCartButton;

//   final Function(ProductVariant, bool) onSelectApply;
//   bool notavailable = false;

//   ProductVariantsView(this.product, this.selectedVariant, this.onSelectApply,
//       this.AddToCartButton,
//       {super.key}) {}

//   List<Widget> GetVariant(BuildContext context, Product p) {
//     List<Widget> widget = [];
//     if (p.option!.length != 0) {
//       for (int i = 0; i < p.option!.length; i++) {
//         widget.add(InkWell(
//           child: Container(
//               decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey.shade200,
//                   ),
//                   color: Colors.grey.shade100,
//                   borderRadius: BorderRadius.all(Radius.circular(10))),
//               padding: const EdgeInsets.all(15),
//               margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [

//                 Flexible(child:   Text(p.option![i].name.toString(),
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
//                                   color: AppTheme.black.withAlpha(120)
//                               ))),
//                  const Spacer(),
//              Text(
//                       selectedVariant.selectedOptions!.length != 0
//                           ? selectedVariant.title!.split(" / ")[i].toString().trim()
//                           : "",

//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                                   fontFamily: 'Cinzel',
//                                   fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
//                                   color: AppTheme.black.withAlpha(120)
//                               )),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   const Icon(Icons.navigate_next,
//                       size: 15, color: AppTheme.black),
//                 ],
//               )),
//           onTap: () {
//             ShowBottomSheet(context);
//           },
//         ));
//       }
//     } else {
//       Text("");
//     }
//     return widget;
//   }

//   ShowBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return ProductVariantBottomSheetView(
//             product, selectedVariant, onSelectApply, AddToCartButton);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: GetVariant(context, product),
//     );
//   }
// }
