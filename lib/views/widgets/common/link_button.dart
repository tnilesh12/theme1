import 'package:flutter/cupertino.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Color? color;
   static String defaultFontFamily = 'Roboto-Light.ttf';
      static double defaultFontSize = 14;

  const LinkButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Text(text, 
      style: CustomTextTheme.getTextStyle(MyTextStyle.LinkTextButton, context),
      // style: TextStyle(
      //   color: color ?? AppTheme.primaryColor,
      //                         fontFamily: defaultFontFamily,
      //                         fontSize: defaultFontSize,
      //                         fontStyle: FontStyle.normal,
      // ),
      ),
    );
  }
}


// InkWell(
//                         onTap: () {
//                          },
//                         child: Container(
//                           child: Text(
//                             "Sign In",
//                             style: TextStyle(
//                               color: Color(0xFFAC252B),
//                               fontFamily: defaultFontFamily,
//                               fontSize: defaultFontSize,
//                               fontStyle: FontStyle.normal,
//                             ),
//                           ),
//                         ),
//                       ),