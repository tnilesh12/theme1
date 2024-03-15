import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';
// import 'package:thesatanictemple/theme/app_theme.dart';
// import '../../../database/cart.dart';
// import '../../../database/databases.dart';
// import '../../../theme/app_assets.dart';
// import '../../../theme/app_colors.dart';

import '../product_details_screen/widgets/product_item_count_view.dart';

class CartRow extends StatelessWidget {
  // final Cart cart;
  final cart;
  final Function onDelete;
  final Function(int) onUpdateQuantity;

  const CartRow(this.cart, this.onDelete, this.onUpdateQuantity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              color: Theme.of(context).colorScheme.background,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child:  
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child:
                WidgetImage(cart["images"])
                  //  FadeInImage.assetNetwork(
                  //   placeholder: "assets/images/placeholder-image.jpg",//AppAssets.placeholder,
                  //   // image: cart.GetVariant().image!.originalSrc.toString(),
                  //   image: cart["images"],
                  //   filterQuality: FilterQuality.high,
                  //   fit: BoxFit.cover,
                  // ),
                )
                ),
            Expanded(
              flex: 3,
              child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Flexible(
                      //     child:
                           Text(cart["title"],//.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CartRowTitle, context)
                              // style: Theme.of(context)
                              //     .textTheme
                              //     .titleSmall!
                              //     .copyWith(color: Colors.black,fontFamily: 'Cinzel')
                              ),                                  
                                  // ),
                      // Flexible(
                        // child:
                         Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(cart["title"],//.GetVariant().title.toString(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CartRowVariant, context)// .withAlpha(120)
                              // style: Theme.of(context)
                              //     .textTheme
                              //     .bodySmall!
                              //     .copyWith(color: Colors.black.withAlpha(120), fontSize: 10,fontFamily: 'Cinzel')
                              ),
                        ),
                      // ),
                      // Flexible(
                      //   child: 
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            children: [
                              Text(
                                  cart["price"],
                                  // .GetVariant()
                                  //     .price!
                                  //     .formattedPrice
                                  //     .toString(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CartRowPrice, context)
                                  // style: Theme.of(context)
                                  //     .textTheme
                                  //     .bodyLarge
                                  //     ?.copyWith(
                                  //         color: Colors.black,
                                  //         fontWeight: FontWeight.bold,fontFamily: 'Cinzel')
                                  ),
                            ],
                          ),
                        ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                  width: 70,
                                  child: ProductItemCountView(false,
                                      (updatedCount) {
                                    onUpdateQuantity.call(updatedCount);
                                  }, cart["quantity"]//.quantity
                                  , 1)),
                            ),
                            Flexible(
                              child: IconButton(
                                onPressed: () async {
                                  onDelete.call();
                                },
                                icon: Icon(Icons.delete,color: Colors.red,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}
