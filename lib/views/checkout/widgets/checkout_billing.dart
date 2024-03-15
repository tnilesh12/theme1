import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/custom_button.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../route/route_generate.dart';
// import '../../../shopify_graphql/models/src/shopify_user/address/address.dart';
// import '../../../theme/app_colors.dart';
import '../bloc/checkout_screen_bloc.dart';

class CheckoutBillingView  extends StatefulWidget  {

  const CheckoutBillingView({super.key});

  @override
  State<CheckoutBillingView> createState() => _CheckboxViewFulState();
}

class _CheckboxViewFulState extends State<CheckoutBillingView> {
  bool valueFirst = true;



  Widget GetBillingView() {
    return Container(child:
      //   BlocBuilder<CheckoutScreenBloc, CheckoutScreenState>(
      //       builder: (context, state) {
      // if (state is CheckoutScreenAddressFound) {
      //   if(state.addressBilling != null) {
          // return
           Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Billing Address",
                          // AppLocalizations.of(context)!.billingaddress,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutAddress, context)
                          // style: Theme
                          //     .of(context)
                          //     .textTheme
                          //     .bodyLarge!
                          //     .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
                        ),
                      ),
                      Container(
                        // height: 30,
                        width: MediaQuery.of(context).size.width / 2.5,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10),
                        //     color: AppTheme.primaryButtonBackground),
                        margin: EdgeInsets.only(bottom: 5, right: 0, top: 5),
                        child: 
                        CustomButton(
                          text:"Change",
                          onPressed: () async {
                            // Address? address = await Navigator.pushNamed(
                            //     context, RouteGenerate.addresslistscreen,
                            //     arguments: {true}) as Address?;
                            // if (address != null) {
                            //   context.read<CheckoutScreenBloc>().add(
                            //       CheckoutScreenAddressChangeBillingEvent(
                            //           address));
                            // }
                          },
                        )
                        // TextButton(
                        //   child: Text("Change",
                        //     // AppLocalizations.of(context)!.change,
                        //     style: Theme
                        //         .of(context)
                        //         .textTheme
                        //         .bodySmall!
                        //         .copyWith(color: AppTheme.white,fontFamily: 'Cinzel'),
                        //   ),
                        //   onPressed: () async {
                        //     // Address? address = await Navigator.pushNamed(
                        //     //     context, RouteGenerate.addresslistscreen,
                        //     //     arguments: {true}) as Address?;
                        //     // if (address != null) {
                        //     //   context.read<CheckoutScreenBloc>().add(
                        //     //       CheckoutScreenAddressChangeBillingEvent(
                        //     //           address));
                        //     // }
                        //   },
                        // ),
                      )
                    ],
                  ),
                ),


                Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Checkbox(

                          checkColor: AppTheme.white,
                          activeColor: AppTheme.primaryColor,
                            side: MaterialStateBorderSide.resolveWith(
                        (value) => BorderSide(width: 1.0, color: AppTheme.black!)),
                          value: valueFirst,
                          onChanged: (value) {
                            setState(() {
                              valueFirst = value!;
                            });
                            if (value == true) {
                              // context
                              //     .read<CheckoutScreenBloc>()
                              //     .add(CheckoutScreenSameAddressEvent());
                            }
                          }),
                    ),
                    SizedBox(width: 10,),
                    Text("Same as Shipping Address",
                      // AppLocalizations.of(context)!.sameasshippingaddress,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
                      // style: Theme
                      //     .of(context)
                      //     .textTheme
                      //     .bodySmall!
                      //     .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
                    )

                  ],
                ),


                valueFirst ? Text("") : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Name",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutUserName, context)
                          // "${state.addressBilling!.firstName} ${state
                          //     .addressBilling!.lastName}",
                          // style: Theme
                          //     .of(context)
                          //     .textTheme
                          //     .bodyMedium!
                          //     .copyWith(color: AppTheme.black!.withAlpha(120),fontFamily: 'Cinzel')
                          ),
                    ),
                    Container(
                      child: Text(
                        "Address",
                        // "${state.addressBilling!.GetFormattedAddress()}",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutAddress, context)
                        // style: Theme
                        //     .of(context)
                        //     .textTheme
                        //     .bodyMedium!
                        //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Phone",
                        // state.addressBilling!.phone.toString(),
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
                        // style: Theme
                        //     .of(context)
                        //     .textTheme
                        //     .bodySmall!
                        //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel'),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        // }
      //   else {
      //     return GetDefaultView(context);
      //   }
      // } else {
      //   return GetDefaultView(context);
      // }
    // })
    );
  }

  Widget GetDefaultView(BuildContext context)
  {

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Billing Address",
                    // AppLocalizations.of(context)!.billingaddress,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutAddress, context)
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .bodyLarge!
                    //     .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.primaryButtonBackground),
                  margin: EdgeInsets.only(bottom: 5, right: 0, top: 5),
                  child: TextButton(
                    child: Text("Add",
                      // AppLocalizations.of(context)!.add,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
                      // style: Theme.of(context)
                      //     .textTheme
                      //     .bodySmall!
                      //     .copyWith(color: AppTheme.white,fontFamily: 'Cinzel'),
                    ),
                    onPressed: () async {
                      // Address? address = await Navigator.pushNamed(
                      //     context, RouteGenerate.addresslistscreen,
                      //     arguments: {true}) as Address?;

                      // if (address != null) {
                      //   context.read<CheckoutScreenBloc>().add(
                      //       CheckoutScreenAddressChangeBillingEvent(
                      //           address!));
                      // }
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15, left: 15),
            child: Text("noddressassociatedwithyouraccount",
              // AppLocalizations.of(context)!.noddressassociatedwithyouraccount,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
              // style: Theme.of(context)
              //     .textTheme
              //     .bodySmall!
              //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel'),
            ),
          ),
        ]);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBillingView();
  }
}
