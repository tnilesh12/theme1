import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/custom_button.dart';
import 'package:theme1/views/widgets/common/custom_textfield.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';
import 'package:theme1/views/widgets/common/link_button.dart';

// class IntroScreen2 extends StatelessWidget {
//   const IntroScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       // resizeToAvoidBottomInset: false,
//       body: SingleChildScrollView(
//         physics: ClampingScrollPhysics(),
//         child: Container(
//           padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
//           width: double.infinity,
//           height: MediaQuery.of(context).size.height,
//           // color: AppTheme.backgroundColor!, //.white70,
//           child: Column(
//             children: <Widget>[
//               Flexible(
//                 flex: 1,
//                 child: InkWell(
//                   child: Container(
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Icon(Icons.close),
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               Flexible(
//                 flex: 5,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       width: 130,
//                       height: 130,
//                       alignment: Alignment.center,
//                       child: Image.asset("assets/images/ic_app_icon.png"),
//                     ),
//                     GapWidget(),
//                     CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
//                         hintText: "Email", prefixIcon: Icons.email),
//                     GapWidget(),
//                     CustomTextFormField().SimpleTextFormFieldWithBothIcon(
//                         hintText: "Password",
//                         prefixIcon: Icons.lock,
//                         suffixIcon: Icons.remove_red_eye,
//                         obscureText: true),
//                     GapWidget(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         LinkButton(
//                           text: "Forgot your password?",
//                           onPressed: () {
//                             context.push("/${RouteGenerate.forgotPassScreen}");
//                           },
//                         )
//                       ],
//                     ),
//                     GapWidget(),
//                     CustomButton(
//                       text: 'Sign In',
//                       onPressed: () {
//               // GoRouter.of(context).pushNamed(RouteGenerate.homeScreen);
//                         context.go("/${RouteGenerate.homeScreen}"); //  /home_screen");
//                       },
//                     ),
//                     GapWidget(
//                       size: -5,
//                     )
//                   ],
//                 ),
//               ),
//               Flexible(
//                 flex: 1,
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         child: Text(
//                           "Don't have an account? ",
//                           style: TextStyle(
//                             color: Color(0xFF666666),
//                             fontFamily: defaultFontFamily,
//                             fontSize: defaultFontSize,
//                             fontStyle: FontStyle.normal,
//                           ),
//                         ),
//                       ),
//                       LinkButton(
//                           text: "Sign Up",
//                           onPressed: () {
//                             context.go("${RouteGenerate.signUpScreen}");
//                           }),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class IntroScreen extends StatelessWidget {
  String defaultFontFamily = 'Roboto-Light.ttf';
  double defaultFontSize = 14;
  double defaultIconSize = 17;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Container(
                    // height : 350,
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.black!.withOpacity(0.9),
                          AppTheme.borderColor!
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: Icon(Icons.close),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GapWidget(
                            size: 5,
                          ),
                          Container(
                            width: 200,
                            height: 130,
                            alignment: Alignment.center,
                            child: Image.asset("assets/images/ic_app_icon.png",
                                color: AppTheme.primaryLightBackgroundColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 0,
                  right: 0,
                  child: _buildContainer(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          elevation: 5,
          // color: AppTheme.white,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            // height: 480,
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("Login"),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    // GoRouter.of(context).pushNamed(RouteGenerate.homeScreen);
                    context
                        .push("/${RouteGenerate.loginScreen}"); //  /home_screen");
                  },
                ),
                GapWidget(),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    // GoRouter.of(context).pushNamed(RouteGenerate.homeScreen);
                    context
                        .push("/${RouteGenerate.signUpScreen}"); //  /home_screen");
                  },
                ),
                GapWidget(),
                CustomButton(
                  text: 'Guest User',
                  onPressed: () {
                    // GoRouter.of(context).pushNamed(RouteGenerate.homeScreen);
                    context
                        .push("/${RouteGenerate.homeScreen}"); //  /home_screen");
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
