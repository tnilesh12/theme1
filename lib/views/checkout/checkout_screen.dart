import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme1/helper/dialogs.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/custom_button.dart';
import 'package:theme1/views/widgets/common/custom_textfield.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:thesatanictemple/theme/app_theme.dart';
// import '../../../route/route_generate.dart';
// import '../../../shopify_graphql/models/src/shopify_user/address/address.dart';
// import '../../../shopify_graphql/shopify/shopify.dart';
// import '../../../theme/app_assets.dart';
// import '../../../theme/app_colors.dart';
// import '../../../utils/dialogs.dart';
import '../../../views/cart_screen/bloc/cart_screen_bloc.dart';
import '../../../views/checkout/bloc/checkout_screen_bloc.dart';
import '../../../views/checkout/lineitems_count.dart';
import '../../../views/checkout/thanks_screen/thanks_screen.dart';
import '../../../views/checkout/widgets/checkout_billing.dart';
import '../../../views/checkout/widgets/checkout_shipping_view.dart';
// import '../../../views/widgets/textfield_widget.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../database/databases.dart';
// import '../../shopify_graphql/models/src/checkout/checkout.dart';
// import '../dashboard_bottom_base/bloc/bottom_base_bloc.dart';
import '../product_details_screen/widgets/product_item_count_view.dart';
// import '../shimmer/checkout_screen_shimmer_effect.dart';

class StaticData {
  String image;
  String productName;
  String variant;
  String price;

  StaticData(this.image, this.productName, this.variant, this.price);
}

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  TextEditingController searchController = TextEditingController();
  bool clear = false;
  double sum = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout",// AppLocalizations.of(context)!.checkout,
        ),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(0))),
          child: TextButton(
            onPressed: () async {
              try {
                // if(context
                //     .read<CheckoutScreenBloc>()
                //     .shippingAddresss == null || context
                //     .read<CheckoutScreenBloc>()
                //     .billingAddress == null)
                //   {
                //     Dialogs.ErrorAlertInOut(
                //         context: context,
                //         message: "please enter your billing and shipping address"//AppLocalizations.of(context)!.pleaseenteryourbillingandshippingaddress
                //       );
                //     return;
                //   }



                // final Uri url = Uri.parse(context
                //     .read<CheckoutScreenBloc>()
                //     .checkouts
                //     .webUrl
                //     .toString());

                // bool value = await Navigator.of(context).pushNamed(
                //     RouteGenerate.webcheckoutScreen,
                //     arguments: {url.toString()}) as bool;

                // if (value) {
                //   Checkout ck = await ShopifyCheckout.instance.getCheckoutQuery(
                //       context
                //           .read<CheckoutScreenBloc>()
                //           .checkouts
                //           .id
                //           .toString());

                //   String t1 = ck.order!.name.toString();
                //   String t2 = ck.shippingAddress!.firstName.toString() +
                //       ck.shippingAddress!.lastName.toString();

                //   //// remove cart items from local database
                //   await DataBaseUtil.deleteCartAll();
                //   context.read<BaseBloc>().CartCountUpdate();

                //   Navigator.pushReplacementNamed(
                //       context, RouteGenerate.thanksScreen,
                //       arguments: {t1, t2});
                // } else {
                //   Dialogs.ErrorAlertInOut(
                //       context: context,
                //       message: AppLocalizations.of(context)!.errorinplaceorderplaceordertryagain);
                // }
              } catch (e) {}
            },
            child: Text(
              "Place Order",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPlaceOrder, context)
              // AppLocalizations.of(context)!.placeOrder,
                // style: Theme.of(context)
                //     .textTheme
                //     .titleLarge!
                //     .copyWith(color: Colors.black,fontFamily: 'Cinzel')
                    ),
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
              color: Theme.of(context).colorScheme.background,
        child: SingleChildScrollView(
          child:
          //  BlocListener<CheckoutScreenBloc, CheckoutScreenState>(
          //   listener: (context, state) {
          //     // TODO: implement listener
          //     if (state is CheckoutError) {
          //       Dialogs.ErrorAlertInOut(
          //           context: context, message: state.message.toString());
          //       searchController.text = "";
          //     }
          //   },
          //   child: BlocBuilder<CheckoutScreenBloc, CheckoutScreenState>(
          //     builder: (context, state) {
          //       if (state is CheckoutScreenAddressFound) {
          //         return
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // CheckoutShippingView().GetShippingView(),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),

                      // CheckoutBillingView(),
                      Divider(
                        thickness: 1,
                        color: Colors.black
                      ),
                      // end of billing address

                      // ItemCountView().getItemCountView(context, state.checkout!),
                      // end of Line items
                      Divider(
                        thickness: 1,
                        color: Colors.black
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Offer Code",
                              // AppLocalizations.of(context)!.offercode,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenOfferCode, context)
                              // style: Theme.of(context)
                              //     .textTheme
                              //     .bodyLarge!
                              //     .copyWith(color: Colors.black,fontFamily: 'Cinzel'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                                CustomTextFormField().SimpleTextFormField(
                                  context: context,
                                  hintText: ""                                   
                                ),
                                GapWidget(),
                                  CustomButton(
                                    text: "Apply",
                                    onPressed: () {
                                      // if (searchController.text.isNotEmpty) {
                                      //   context.read<CheckoutScreenBloc>().add(
                                      //       CheckoutScreenApplyOfferEvent(
                                      //           searchController.text));
                                      // } else {
                                        Dialogs.ErrorAlertInOut(
                                            context: context,
                                            message: "please enter offer code"// AppLocalizations.of(context)!.pleaseenteroffercode
                                            );
                                      // }
                                    },
                                  ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                                // Container(
                                //   decoration: BoxDecoration(
                                //       border: Border.all(
                                //           color: Colors.black),
                                //       borderRadius: BorderRadius.all(
                                //           Radius.circular(10))),
                                //   width: 260,
                                //   height: 50,
                                //   padding: EdgeInsets.only(left: 5, right: 5),
                                //   child: TextField(
                                //     style:
                                //         Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black,fontFamily: 'Cinzel'),
                                //     controller: searchController,
                                //     autocorrect: false,
                                //     smartDashesType: SmartDashesType.disabled,
                                //     enableSuggestions: false,
                                //     decoration: InputDecoration(
                                //         hintStyle: TextStyle(
                                //             fontSize: 15.0,
                                //             fontWeight: FontWeight.w400,
                                //             color: Colors.black,   fontFamily: 'Cinzel',),
                                //         border: InputBorder.none,
                                //            ),
                                //   ),
                                // ),
                                // Container(
                                //   // decoration: BoxDecoration(
                                //   //     color: Colors.black,
                                //   //     borderRadius: BorderRadius.all(
                                //   //         Radius.circular(10))),
                                //   child: 
                                //   CustomButton(
                                //     text: "Apply",
                                //     onPressed: () {
                                //       // if (searchController.text.isNotEmpty) {
                                //       //   context.read<CheckoutScreenBloc>().add(
                                //       //       CheckoutScreenApplyOfferEvent(
                                //       //           searchController.text));
                                //       // } else {
                                //         Dialogs.ErrorAlertInOut(
                                //             context: context,
                                //             message: "please enter offer code"// AppLocalizations.of(context)!.pleaseenteroffercode
                                //             );
                                //       // }
                                //     },
                                //   )
                                  // TextButton(
                                  //   onPressed: () {
                                  //     // if (searchController.text.isNotEmpty) {
                                  //     //   context.read<CheckoutScreenBloc>().add(
                                  //     //       CheckoutScreenApplyOfferEvent(
                                  //     //           searchController.text));
                                  //     // } else {
                                  //       Dialogs.ErrorAlertInOut(
                                  //           context: context,
                                  //           message: "please enter offer code"// AppLocalizations.of(context)!.pleaseenteroffercode
                                  //           );
                                  //     // }
                                  //   },
                                  //   child: Text(
                                  //     "Apply",
                                  //     // AppLocalizations.of(context)!.apply,
                                  //     // style: Theme.of(context)
                                  //     //     .textTheme
                                  //     //     .bodySmall!
                                  //     //     .copyWith(color: Colors.white,fontFamily: 'Cinzel'),
                                  //   ),
                                  // ),
                              //   ),
                              // ],
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            searchController.text.isNotEmpty
                                ? Container(
                                    padding: EdgeInsets.only(left: 5),
                                    width: 200,
                                    margin: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                topEnd:
                                                    Radius.elliptical(80, 35),
                                                bottomEnd:
                                                    Radius.elliptical(80, 35)),
                                        color: Colors.grey.shade300),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            searchController.text,
                                            maxLines: 2,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenDefault, context)
                                            // style: TextStyle(
                                            //     color: Colors.black,   fontFamily: 'Cinzel',),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              // context
                                              //     .read<CheckoutScreenBloc>()
                                              //     .add(
                                              //         CheckoutScreenRemoveOfferEvent(
                                              //             searchController
                                              //                 .text));
                                              // setState(() {
                                              //   searchController.text = "";
                                              // });
                                            },
                                            icon: Icon(Icons.cancel,color:Colors.black))
                                      ],
                                    ),
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),

                      //end of offer code
                      Divider(
                        thickness: 1,
                        color: Colors.black
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Total",
                                            // AppLocalizations.of(context)!.subTotal,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenTotal, context)
                                            // style: Theme.of(context)
                                            //     .textTheme
                                            //     .bodyMedium!
                                            //     .copyWith(
                                            //         color: Colors.black,fontFamily: 'Cinzel'),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "44",
                                            // context
                                            //     .read<CheckoutScreenBloc>()
                                            //     .checkouts
                                            //     .subtotalPriceV2!
                                            //     .formattedPrice
                                            //     .toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                            // style: Theme.of(context)
                                            //     .textTheme
                                            //     .bodyMedium!
                                            //     .copyWith(
                                            //         color: Colors.black,fontFamily: 'Cinzel'),
                                          ),
                                        ),
                                      ],
                                    )),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Text("5",
                                              // AppLocalizations.of(context)!.tax,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                              // style: Theme.of(context)
                                              //     .textTheme
                                              //     .bodyMedium!
                                              //     .copyWith(
                                              //         color:
                                              //             Colors.black,fontFamily: 'Cinzel'),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "27",
                                              // context
                                              //     .read<CheckoutScreenBloc>()
                                              //     .checkouts
                                              //     .totalTaxV2!
                                              //     .formattedPrice
                                              //     .toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                              // style: Theme.of(context)
                                              //     .textTheme
                                              //     .bodyMedium!
                                              //     .copyWith(
                                              //         color:
                                              //             Colors.black,fontFamily: 'Cinzel'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // context
                                    //             .read<CheckoutScreenBloc>()
                                    //             .checkouts
                                    //             .availableShippingRates
                                                27 !=
                                            null
                                        ? Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "Shipping",
                                                    // AppLocalizations.of(context)!.shipping,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                                    // style: Theme.of(context)
                                                    //     .textTheme
                                                    //     .bodyMedium!
                                                    //     .copyWith(
                                                    //         color: Colors
                                                    //             .black,fontFamily: 'Cinzel'),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "28",
                                                    // context
                                                    //     .read<
                                                    //         CheckoutScreenBloc>()
                                                    //     .checkouts
                                                    //     .availableShippingRates!
                                                    //     .shippingRates![0]
                                                    //     .priceV2!
                                                    //     .formattedPrice
                                                    //     .toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                                    // style: Theme.of(context)
                                                    //     .textTheme
                                                    //     .bodyMedium!
                                                    //     .copyWith(
                                                    //         color: Colors
                                                    //             .black,fontFamily: 'Cinzel'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        : SizedBox(),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                // Text(
                                                //   "Discount",
                                                //   style: Theme.of(context)
                                                //       .textTheme
                                                //       .bodyMedium!
                                                //       .copyWith(
                                                //           color:
                                                //               Colors.blackLight),
                                                // ),
                                                Text(
                                                  "2",
                                                  // AppLocalizations.of(context)!.discount,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                                  // style: Theme.of(context)
                                                  //     .textTheme
                                                  //     .bodyMedium!
                                                  //     .copyWith(
                                                  //         color: Colors
                                                  //             .black,fontFamily: 'Cinzel'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "25",
                                              // context
                                              //     .read<CheckoutScreenBloc>()
                                              //     .getDiscountAmount()
                                              //     .toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                              // style: Theme.of(context)
                                              //     .textTheme
                                              //     .bodyMedium!
                                              //     .copyWith(
                                              //         color:
                                              //             Colors.black,fontFamily: 'Cinzel'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 2,
                                      color: Colors.black,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Total",
                                              // AppLocalizations.of(context)!.total,
                                              
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenTotal, context)
                                              // style: Theme.of(context)
                                              //     .textTheme
                                              //     .bodyMedium!
                                              //     .copyWith(
                                              //         color: Colors.black,fontFamily: 'Cinzel'),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "33",
                                              // context
                                              //     .read<CheckoutScreenBloc>()
                                              //     .checkouts
                                              //     .totalPriceV2!
                                              //     .formattedPrice
                                              //     .toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutScreenPrice, context)
                                              // style: Theme.of(context)
                                              //     .textTheme
                                              //     .bodyMedium!
                                              //     .copyWith(
                                              //         color: Colors.black,fontFamily: 'Cinzel'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // end of paid
                                  ],
                                ),
                              )
                            ],
                          )),
                      // end of paid view
                    ],
                  )
                // } else {
                //   return CheckoutShimmerEffect().checkoutshimmereffect(context);
                // }
              // },
            ),
          ),
        // ),
      // ),
    );
  }
}
