import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/utils/dialogs.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/cart_screen/cart_screen.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:thesatanictemple/route/route_generate.dart';
// import 'package:thesatanictemple/views/favorite/favorite_view.dart';
// import '../../../database/cart.dart';
// import '../../../database/databases.dart';
// import '../../../shopify_graphql/models/models.dart';
// import '../../../theme/app_theme.dart';
// import '../../../utils/dialogs.dart';
import '../../../views/product_details_screen/bloc/product_details_screen_bloc.dart';
import '../../../views/product_details_screen/widgets/product_image_slider.dart';
import '../../../views/product_details_screen/widgets/product_item_count_view.dart';
import '../../../views/product_details_screen/widgets/product_variant.dart';
import 'widgets/product_page_slider.dart';
// import '../../../globels.dart' as globals;
// import '../../theme/app_assets.dart';
// import '../../utils/loading_dialog.dart';
// import '../dashboard_bottom_base/bloc/bottom_base_bloc.dart';
// import '../shimmer/product_detail_shimmer_view.dart';
// import '../widgets/rating_review_widget.dart';
import 'widgets/product_variant_view_for_details.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isOutOfStock = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  AddItemInCart() async {
    // var cart = Cart(
    //     title:
    //         context.read<ProductDetailsScreenBloc>().product.title.toString(),
    //     quantity: context.read<ProductDetailsScreenBloc>().qantity,
    //     variant: jsonEncode(
    //         context.read<ProductDetailsScreenBloc>().selectedVariant.toJson()),
    //     variantId: context
    //         .read<ProductDetailsScreenBloc>()
    //         .selectedVariant
    //         .id
    //         .toString());

    // await DataBaseUtil.checkCart(cart);

    // context.read<BaseBloc>().CartCountUpdate();
    Dialogs.SuccessAlertInOut(
        context: context,
        message: "Item added in cart");// AppLocalizations.of(context)!.itemaddedincart);
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      actions: [
        Stack(
          children: [
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                          context.push("/${RouteGenerate.cartScreen}");
                }),
            Positioned(
                top: 5,
                right: 0,
                child: CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: Colors.red,
                  child: Center(
                    child: 
                    // BlocBuilder<BaseBloc, BaseState>(
                    //   builder: (context, state) {
                    //     return 
                        Text(
                          "3",
                          // context.read<BaseBloc>().countCart.toString(),
                             )
                      // },
                    // ),
                  ),
                ))
          ],
        ),
        Stack(
          children: [
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Product p = context.read<ProductDetailsScreenBloc>().product;
                  // String url = FirebaseRemoteConfig.instance
                  //         .getString(AppLocalizations.of(context)!.shopname) +
                  //     "/" +
                  //     AppLocalizations.of(context)!.products +
                  //     "/" +
                  //     p.title!.toLowerCase().replaceAll(" ", "-");
                  // Share.share(url);
                }),
          ],
        )
      ],
    );

    // return
    //  BlocListener<ProductDetailsScreenBloc, ProductDetailsScreenState>(
    //     listener: (context1, state) {},
    //     child: BlocBuilder<ProductDetailsScreenBloc, ProductDetailsScreenState>(
    //         builder: (context1, state) {
    //       if (state is ProductDetailsScreenLoading) {
    //         return ProductDetailShimmerEffects()
    //             .productdetailsscreenshimmereffect(context);
    //       }
    //       if (state is ProductDetailsDataLoad) {
    //         isOutOfStock = state.variant.availableForSale ?? false;
            return Scaffold(
                extendBodyBehindAppBar: true,
                bottomNavigationBar: isOutOfStock == false
                    ? Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            border: Border.all(color: AppTheme.primaryColor!),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Text("Out of Stock",//AppLocalizations.of(context)!.outofstock,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailAddToCart, context)
                            // style: TextStyle(
                            //     fontFamily: 'Cinzel',
                            //     fontSize: Theme.of(context)
                            //         .textTheme
                            //         .titleLarge!
                            //         .fontSize,
                            //     color: AppTheme.appBarTextColor)
                                ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            border: Border.all(color: AppTheme.primaryColor!),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0))),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ProductItemCountView(true, (updatedCount) {
                            //   context.read<ProductDetailsScreenBloc>()
                            //       .UpdateQty(updatedCount);
                            // }, 1, 0),
                            TextButton(
                              child: Text(
                                "Add to Cart",
                                  // AppLocalizations.of(context)!.addtocart,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailAddToCart, context)
                                  // style: TextStyle(
                                  //     fontFamily: 'Cinzel',
                                  //     fontSize: Theme.of(context)
                                  //         .textTheme
                                  //         .titleLarge!
                                  //         .fontSize,
                                  //     color: AppTheme.primaryButtonText,
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              onPressed: () async {
                                AddItemInCart();
                              },
                            )
                          ],
                        ),
                      ),
                appBar: appBar,
                body: Container(
                  // color: Colors.white, //AppTheme.white,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: appBar.preferredSize.height + 35,
                        ),
                        // WidgetImage("https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        // Image.network("https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        ProductPageSlider("1"),
                        //     state.product.images!, state.product.id!),

                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Louis Vuitton Shirt",
                                // state.product.title.toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailTitle, context)
                                // style: TextStyle(
                                //     fontFamily: 'Cinzel',
                                //     fontSize: Theme.of(context)
                                //         .textTheme
                                //         .titleLarge!
                                //         .fontSize,
                                //     color: AppTheme.black),
                              ),
                              Text(
                                "Vendor",
                                // state.product.vendor.toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailVendor, context),
                                // style: TextStyle(
                                //     fontFamily: 'Cinzel',
                                //     fontSize: Theme.of(context)
                                //         .textTheme
                                //         .labelMedium!
                                //         .fontSize,
                                //     color: AppTheme.black),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$44.00",
                                    // state.product.tempPrice == null
                                    //     ? state.product.formattedPrice
                                    //         .toString()
                                    //     : state
                                    //         .product.tempPrice!.formattedPrice
                                    //         .toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailPrice, context)
                                    // style: TextStyle(
                                    //     fontFamily: 'Cinzel',
                                    //     fontSize: Theme.of(context)
                                    //         .textTheme
                                    //         .headlineSmall!
                                    //         .fontSize,
                                    //     color: AppTheme.priceTagColor!),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "\$33.00",
                                      // state.product.priceCompareUpdate == null
                                      //     ? state.product.formattedPriceCompare
                                      //         .toString()
                                      //     : state.product.priceCompareUpdate!
                                      //         .formattedPrice,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailDefault, context).copyWith(decoration: TextDecoration.lineThrough)
                                      // style: TextStyle(
                                      //     fontFamily: 'Cinzel',
                                      //     fontSize: Theme.of(context)
                                      //         .textTheme
                                      //         .titleMedium!
                                      //         .fontSize,
                                      //     color: Colors.black, //AppTheme.black,
                                      //     decoration:
                                      //         TextDecoration.lineThrough),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // state.product.productVariants!.length > 1
                            // ? ProductVariantDetialsView(
                            //     state.product,
                            //     context
                            //         .read<ProductDetailsScreenBloc>()
                            //         .selectedVariant, (item, AddToCartButton) {
                            //     context
                            //         .read<ProductDetailsScreenBloc>()
                            //         .UpdateProdictVariant(item);
                            //     // context
                            //     //     .read<ProductDetailsScreenBloc>()
                            //     //     .add(onPriceUpdateClick(item));

                            //     if (item.availableForSale == false) {
                            //       isOutOfStock = true;
                            //     } else {
                            //       isOutOfStock = false;
                            //     }

                            //     if (AddToCartButton) {
                            //       /// add item in cart+++++++
                            //       AddItemInCart();
                            //     }

                            //     setState(() {});
                            //   }, false)
                            // : SizedBox.shrink(),

                        // state.product.productVariants!.length > 1
                        //     ?
                        // ProductVariantsView(
                        //         state.product,
                        //         context
                        //             .read<ProductDetailsScreenBloc>()
                        //             .selectedVariant, (item, AddToCartButton) {
                        //         context
                        //             .read<ProductDetailsScreenBloc>()
                        //             .UpdateProdictVariant(item);
                        //         // context
                        //         //     .read<ProductDetailsScreenBloc>()
                        //         //     .add(onPriceUpdateClick(item));
                        //
                        //         if (item.availableForSale == false) {
                        //           isOutOfStock = true;
                        //         } else {
                        //           isOutOfStock = false;
                        //         }
                        //
                        //         if (AddToCartButton) {
                        //           /// add item in cart+++++++
                        //           AddItemInCart();
                        //         }
                        //
                        //         setState(() {});
                        //       }, false)
                        //     : SizedBox.shrink(),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product About Product",
                                  // AppLocalizations.of(context)!.aboutthisitem,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ProductDetailDescription, context)
                                  // style: TextStyle(
                                  //     fontFamily: 'Cinzel',
                                  //     fontSize: Theme.of(context)
                                  //         .textTheme
                                  //         .titleSmall!
                                  //         .fontSize,
                                  //     color: Colors.black) //AppTheme.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                HtmlWidget(
                                  "Description",
                                  // state.product.descriptionHtml.toString(),
                                  // all other parameters are optional, a few notable params:

                                  // specify custom styling for an element
                                  // see supported inline styling below
                                  customStylesBuilder: (element) {
                                    //if (element.id.contains('top')) {
                                    return {'color': 'gray'};
                                    //}
                                    //return null;
                                  },

                                  customWidgetBuilder: (element) {
                                    return null;
                                  },

                                  // this callback will be triggered when user taps a link
                                  onTapUrl: (p0) {
                                    return false;
                                  },

                                  // select the render mode for HTML body
                                  // by default, a simple `Column` is rendered
                                  // consider using `ListView` or `SliverList` for better performance
                                  // renderMode: RenderMode.column,

                                  // set the default styling for text
                                  textStyle: TextStyle(
                                      fontSize: 14, fontFamily: 'Cinzel'),
                                )
                              ],
                            )),
                        // SizedBox(
                        //   height: 200,
                        //   child: RatingAndReview().ratingandreview(context),
                        // ),
                        // SizedBox(
                        //   child: TopProductView(
                        //       AppLocalizations.of(context)!.relatedproduct,
                        //       () {},
                        //       context
                        //           .read<ProductDetailsScreenBloc>()
                        //           .relatedProductList!,
                        //       ""),
                        // ),
                      ],
                    ),
                  ),
                ));
          // } else {
          //   return Scaffold(
          //       backgroundColor: Colors.white,// Colors.white, //AppTheme.white,
          //       body: Text("loading"));
          // }
        }
        // ));
  }
// }
// child: Container(
//   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
//   child: ListView.builder(
//       physics: ClampingScrollPhysics(),
//       shrinkWrap: true,
//       scrollDirection: Axis.horizontal,
//       itemCount: ProductList.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//             width: 100,
//             child: Row(
//               children: [
//                 Container(
//                   width: 90,
//                   height: 90,
//                   margin:
//                       EdgeInsets.fromLTRB(0, 0, 0, 0),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(
//                             ProductList[index].image),
//                         fit: BoxFit.cover),
//                   ),
//                 ),
//               ],
//             ));
//       }),
// ),
