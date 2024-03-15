import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/custom_button.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:thesatanictemple/theme/app_theme.dart';
// import '../../../route/route_generate.dart';
import '../../../views/checkout/bloc/checkout_screen_bloc.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../../theme/app_colors.dart';

class ThanksScreen extends StatefulWidget {
String  orderid, name;

   ThanksScreen(this.orderid, this.name,{super.key});

  @override
  State<ThanksScreen> createState() => _ThanksScreenState();
}

class _ThanksScreenState extends State<ThanksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Container(
              color: Theme.of(context).colorScheme.background,
            // margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(

                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(80),
                            color:  Colors.green.withAlpha(120),),

                            
                        child: Icon(
                          Icons.check_outlined,
                          color: Colors.white,size: 35,
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 20,
                     ),
                 Text(
                            widget.orderid,
                            textAlign: TextAlign.center,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ThanksScreenOrderId, context)
                            // style: TextStyle(color: Colors.black, fontSize: 20,   fontFamily: 'Cinzel',),
                          ),
                        
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                        "Thanks ${    widget.name}",
                        textAlign: TextAlign.center,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ThanksScreenUserName, context)
                          // style: TextStyle(color: Colors.black, fontSize: 20,   fontFamily: 'Cinzel',),
                        ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Your Order is complete you will recive a confirmation email with your order no. shortly",
                  // AppLocalizations.of(context)!.yourorderiscompleteyouwillreciveaconfirmemailwithyourordernoshortly,
                  textAlign: TextAlign.center,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.ThanksScreenDescription, context)
                  // style: TextStyle(color: Colors.black, fontSize: 20,   fontFamily: 'Cinzel',),
                ),
                SizedBox(
                  height: 70,
                ),
                CustomButton(
                     text : "Continue Shopping",
                      // AppLocalizations.of(context)!.continueshopping,
                                // style: CustomTextTheme.getTextStyle(MyTextStyle.ThanksScreen, context)
                      // style: TextStyle(color: Colors.white, fontSize: 18,   fontFamily: 'Cinzel',),
                  onPressed: () {
                          // context.go("/${RouteGenerate.homeScreen}");
              // Navigator.pushNamedAndRemoveUntil(context, RouteGenerate.homeScreen, (b){return false;} );
                  },
                ),
              ],
            ),
          
          ),
        ),
      ),
    );
  }
}
