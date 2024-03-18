// import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/utils/dialogs.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/checkout/checkout_screen.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:thesatanictemple/theme/app_theme.dart';
// import '../../../database/databases.dart';
// import '../../../route/route_generate.dart';
// import '../../../shopify_graphql/models/models.dart';
// import '../../../shopify_graphql/models/src/checkout/line_item/line_item.dart';
// import '../../../shopify_graphql/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';
// import '../../../shopify_graphql/shopify/shopify.dart';
// import '../../../theme/app_colors.dart';
// import '../../../utils/dialogs.dart';
// import '../../../utils/session.dart';
// import '../../../views/dashboard_bottom_base/bloc/bottom_base_bloc.dart';
// import '../../../views/widgets/no_data_view.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../repository/ApiRepository.dart';
// import '../checkout/thanks_screen/thanks_screen.dart';
// import '../shimmer/order_screen_shimmer_view.dart';
import 'bloc/cart_screen_bloc.dart';
import 'cart_row.dart';

  var cat = [
    {
      "quantity" : 1,
      // "index" : "1",
      "images" : "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "price" : "33",
      "title" : "Testing1"
    },
    {
      "quantity" : 2,
      // "index" : "",
      "images" : "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D=",
      "price" : "43",
      "title" : "Testing2"
    },
    {
      "quantity" : 3,
      // "index" : "3",
      "images" : "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "price" : "53",
      "title" : "Testing3"
    },
  ];
class CartScreen extends StatelessWidget {
  // const CartScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"//AppLocalizations.of(context)!.car)
          ),
        ),
        body: CartBody()
         );
        // ));
  }
}

class CartBody extends StatelessWidget {
   CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
              color: Theme.of(context).colorScheme.background,
          child: 
          // BlocListener<CartScreenBloc, CartScreenState>(
          //   listener: (context, state) async {},
          //   child: BlocBuilder<CartScreenBloc, CartScreenState>(
          //     builder: (context, state) {
          //       if (state is CartScreenLoading) {
          //         return OrderListScreenShimmerEffect()
          //             .oderlistscreenshimmereffect(context, false);
          //       } else if (state is CartScreenLoaded) {
          //         context.read<BaseBloc>().CartCountUpdate();
          //         return 
                  Container(
              color: Theme.of(context).colorScheme.background,
                      child: Column(
                        children: [
                          Expanded(
                              child: ListView.separated(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: 3,// state.cat.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CartRow(cat[index]// state.cat[index]
                              , () async {
                                DialogAction action =
                                    await Dialogs.yesAbortDialog(
                                        context,
                                        "Delete",
                                        "Do you want to delete"
                                        // AppLocalizations.of(context)!.delete,
                                        // AppLocalizations.of(context)!
                                            // .doyou_want_to_delete_item
                                            );
                                if (action == DialogAction.YES) {
                                  // context
                                  //     .read<CartScreenBloc>()
                                  //     .add(DeleteCartItem(state.cat[index]));
                                }
                              }, (count) {
                                // context.read<CartScreenBloc>().add(
                                //     UpdateCartItem(state.cat[index], count));
                              });
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Divider(
                                // thickness: 3,
                                height: 10,
                                // color: AppTheme.borderColor!.withAlpha(80),
                              );
                            },
                          )),
                          Container(
                            decoration: BoxDecoration(
                                color: AppTheme.primaryButtonBackground,
                                border:
                                    Border.all(color: AppTheme.primaryButtonBackground!
                                    ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            height: 80,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: 
                            // BlocBuilder<CartScreenBloc, CartScreenState>(
                            //   builder: (context, state1) {
                            //     return
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "No. of Items",
                                          // AppLocalizations.of(context)!
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CartScreenNumberOfItems, context)
                                          //     .totalofcart,
                                          // style: Theme.of(context)
                                          //     .textTheme
                                          //     .titleSmall!
                                          //     .copyWith(color: AppTheme.primaryButtonText,fontFamily: 'Cinzel'),
                                        ),
                                        Text(
                                          "Total",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CartScreenTotal, context)
                                          // context
                                          //     .read<CartScreenBloc>()
                                          //     .formatedPrice
                                          //     .toString(),
                                          // style: Theme.of(context)
                                          //     .textTheme
                                          //     .titleLarge!
                                          //     .copyWith(color: AppTheme.primaryButtonText,fontFamily: 'Cinzel'),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    

                                    TextButton(
                                      child: Text(
                                        "Checkout",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CartScreenCheckout, context)
                                          // AppLocalizations.of(context)!.checkout,
                                          // style: Theme.of(context)
                                          //     .textTheme
                                          //     .titleLarge!
                                          //     .copyWith(
                                          //         color: AppTheme.primaryButtonText
                                          //             // .buttonbackColor
                                          //             , fontWeight: FontWeight.bold,fontFamily: 'Cinzel')
                                          ),
                                      onPressed: () async {
                                        // bool islogin = await Session.IsLogin();
                                        // if (islogin) {
                          // context.push("/${RouteGenerate.checkoutScreen}");
                                        //   Navigator.of(context).pushNamed(
                                        //       RouteGenerate.checkoutScreen);
                                        // } else {
                                        //   Object? refresh =
                                        //       await Navigator.of(context)
                                        //           .pushNamed(
                                        //               RouteGenerate.loginScreen,
                                        //               arguments: {true});
                                        //   if (refresh != null) {
                                        //     if (refresh as bool) {
                          // context.push("/${RouteGenerate.checkoutScreen}");
                                        //       Navigator.of(context).pushNamed(
                                        //           RouteGenerate.checkoutScreen);
                                        //     }
                                        //   }
                                        // }
                                        //context.p(name)
                          context.push("/${RouteGenerate.checkoutScreen}");
                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutScreen(),));
                                      },
                                    )
                                  ],
                                )
                            //   },
                            // ),
                          ),
                        ],
                      )
                      )
                // } else {
                //   context.read<BaseBloc>().CartCountUpdate();
                //   return NoDataView();
                // }
              // },
            );
     
  }
}