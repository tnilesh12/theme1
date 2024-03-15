import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/favorite/favorite_view.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:thesatanictemple/views/favorite/favorite_view.dart';
// import '../../database/cart.dart';
// import '../../database/databases.dart';
// import '../../shopify_graphql/models/src/product/product.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import '../../theme/app_assets.dart';
// import '../../theme/app_colors.dart';
// import '../../theme/app_theme.dart';
// import '../../utils/dialogs.dart';
// import '../dashboard_bottom_base/bloc/bottom_base_bloc.dart';
// import '../product_details_screen/widgets/product_variant.dart';

class ProductGridView extends StatefulWidget {
  // Product product;
  BuildContext context;
  var product = {
    "id": "1",
    // "index" : "1",
    "images":
        "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "formattedPrice": "\$33.00",
    "title": "Louis Vuitton Shirt"
  };
  //   ,
  //   {
  //     "id" : "2",
  //     // "index" : "",
  //     "images" : "https://media.istockphoto.com/id/1442179368/photo/maldives-island.webp?b=1&s=170667a&w=0&k=20&c=i8wK-BoIq_B365rf0oMRBNmuMc4U1zlTUllMuyr_QNw=",
  //     "formattedPrice" : "43",
  //     "title" : "Testing2"
  //   },
  //   {
  //     "id" : "3",
  //     // "index" : "3",
  //     "images" : "https://images.unsplash.com/photo-1589802829985-817e51171b92?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D",
  //     "formattedPrice" : "53",
  //     "title" : "Testing3"
  //   },
  // ];

  Function(String) OnClick;

  ProductGridView(this.context, this.OnClick);

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 0.5, color: AppTheme.borderColor! //.lightBorder
                )),
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              WidgetImage(widget.product["images"]!),
              // Container(
              //   margin: EdgeInsets.all(2),
              //   height: MediaQuery.of(context).size.width * 40 / 100,
              //   child: CachedNetworkImage(
              //       imageUrl: widget.product["images"]!,
              //       // (widget.product[0].originalSrc.toString()),
              //       placeholder: (context, url) => Image.asset(
              //           "assets/images/placeholder-image.jpg",
              //           fit: BoxFit.cover),
              //       errorWidget: (context, url, error) => Image.asset(
              //           "assets/images/placeholder-image.jpg",
              //           fit: BoxFit.cover),
              //       fit: BoxFit.cover),
              // ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                      alignment: Alignment.centerLeft,
                      child: Text(widget.product["title"]!, //.title.toString(),
                          maxLines: 2,
      style: CustomTextTheme.getTextStyle(MyTextStyle.ProductGridViewCardTitle, context),
                          // style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          //     color: Colors.black, fontFamily: 'Cinzel')
                          ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "From", //AppLocalizations.of(context)!.from,
                                  
      style: CustomTextTheme.getTextStyle(MyTextStyle.ProductGridViewCardFrom, context),
                                  // style: Theme.of(context)
                                  //     .textTheme
                                  //     .bodySmall!
                                  //     .copyWith(
                                  //         color: Colors.black.withAlpha(120),
                                  //         fontSize: 12,
                                  //         fontFamily: 'Cinzel')
                                          ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "${widget.product["formattedPrice"]}", //formattedPrice,
                                  
      style: CustomTextTheme.getTextStyle(MyTextStyle.ProductGridViewCardPrice, context),
                                  // style: Theme.of(context)
                                  //     .textTheme
                                  //     .bodyMedium!
                                  //     .copyWith(
                                  //         color: Colors.red,
                                  //         fontWeight: FontWeight.bold,
                                  //         fontFamily: 'Cinzel')
                                  ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppTheme.borderColor!.withAlpha(100),
                            border: Border.all(
                              color: AppTheme.borderColor!.withAlpha(50),
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              // ProductVariantsView(widget.product,
                              //         widget.product.productVariants!.first,
                              //         (item, AddToCartButton) async {
                              //   var cart = Cart(
                              //       title: widget.product.title.toString(),
                              //       quantity: 1,
                              //       variant: jsonEncode(item.toJson()),
                              //       variantId: item.id.toString());
                
                              //   // await DataBaseUtil.checkCart(cart);
                
                              //   context.read<BaseBloc>().CartCountUpdate();
                              //   Dialogs.SuccessAlertInOut(
                              //       context: context,
                              //       message:
                              //           AppLocalizations.of(context)!.itemaddedincart);
                              // }, true)
                              //     .ShowBottomSheet(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                              child: Text(
                                  "Add To Cart", // AppLocalizations.of(context)!.addtocart,
      style: CustomTextTheme.getTextStyle(MyTextStyle.ProductGridViewCardCart, context),
                                  // style: Theme.of(context)
                                  //     .textTheme
                                  //     .bodySmall!
                                  //     .copyWith(
                                  //         color: Colors.white,
                                  //         fontWeight: FontWeight.bold,
                                  //         fontSize: 10,
                                  //         fontFamily: 'Cinzel')
                                          ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ])),
      ),
      Positioned(
          top: 6,
          right: 6,
          child: FavoriteView(
              widget.product["id"]! //.id!
              ,
              20, (productId) {
            widget.OnClick(widget.product["id"]! //.id!
                );
          })),
    ]);
  }
}
