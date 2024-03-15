import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/checkout/checkout_screen.dart';
import 'package:theme1/views/checkout/thanks_screen/thanks_screen.dart';
import 'package:theme1/views/checkout/widgets/checkout_billing.dart';
import 'package:theme1/views/webview_pages/webview_pages_screen.dart';
import 'package:theme1/views/widgets/common/custom_list_tile.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';

class ProfileScreen extends StatelessWidget {
  bool isOpenedFromBottomBar;
  ProfileScreen({required this.isOpenedFromBottomBar});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      // appBar: AppBar(
      //   title: Text('Profile'),
      // ),
        body: 
        ProfileScreenBody(isOpenedFromBottomBar: false,)
      ),
    );
  }
}

class ProfileScreenBody extends StatelessWidget {
  bool isOpenedFromBottomBar;
  ProfileScreenBody({this.isOpenedFromBottomBar = true, super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            height: double.maxFinite,
            // height: MediaQuery.of(context).size.height,
            child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Background image
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
                          isOpenedFromBottomBar
                              ? Container(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10, bottom: 30),
                                )
                              : Container(
                                  child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 10, right: 10, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.arrow_back),
                                      Text(
                                        "Profile Page",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeTitle, context)
                                        // style: TextStyle(
                                        //     fontSize: 20,
                                        //     fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )),
                          // GapWidget(
                          //   size: 5,
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     GapWidget(
                          //       size: -5,
                          //     ),
                          //     Text(
                              //           "Profile Page",
                              //   style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeTitle, context)
                              //   // style: TextStyle(
                              //   //   fontSize: 24,
                              //   //   color: AppTheme.white,
                              //   //             fontWeight: FontWeight.bold
                              //   // ),
                              // ),
                          //   ],
                          // ),
                          GapWidget(
                            size: 20,
                          ),
                          Text(
                            'John Doe',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeTitle, context)
                            // style: TextStyle(
                            //   fontSize: 24,
                            //   fontWeight: FontWeight.bold,
                            //   color: Colors.white,
                            // ),
                          ),
                          GapWidget(size: -5),
                          // User's email
                          Text(
                            'johndoe@example.com',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeSubTitle, context)
                            // style: TextStyle(
                            //   fontSize: 18,
                            //   color: Colors.white,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                   Positioned(
                    top: 220, left: 0, right: 0, child: _buildContainer(context)),
                // // Account container
                // _buildContainer('Account', Icons.account_circle, () {
                //   // Handle onTap
                // }),
              ],
            ),
          ),
        );
  }
  //   Widget _buildDetailItem(IconData icon, String text) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 5),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(
  //           icon,
  //           size: 20,
  //         ),
  //         GapWidget(size: -5),
  //         Text(
  //           text,
  //           style: TextStyle(
  //             fontSize: 16,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildContainer(BuildContext context) {
    return Container(
        // width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        // decoration: BoxDecoration(
        //   // col/or: const Color.fromARGB(255, 0, 0, 0),
        //   // borderRadius: BorderRadius.circular(10),
        // ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            // color: Colors.transparent,
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  // color: Colors.grey[200],
                  child: Container(
                    // height: 120,
                    child: Column(
                      children: [
                        CustomListTile(
                          text: "Test",
                          leadingIcon: Icons.location_city,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutScreen(),));
                          },
                        ),
                        CustomListTile(
                          text: "Address List",
                          leadingIcon: Icons.location_city,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.addressListscreen}");
                          },
                        ),
                        Divider(
                          
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Order List",
                          leadingIcon: Icons.shopping_bag_rounded,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.orderListScreen}");},
                        ),
                        Divider(
                          
                          height: 1,
                        ),
                        CustomListTile(
                          text: "My Profile",
                          leadingIcon: Icons.person,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {},
                        ),
                        Divider(
                          
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Change Password",
                          leadingIcon: Icons.password,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.changePassScreen}");
                            },
                        ),
                        Divider(
                          
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Favorite",
                          leadingIcon: Icons.favorite,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.favoriteListScreen}");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                GapWidget(size: -5),
                Card(
                  elevation: 5,
                  // color: Colors.grey[200],
                  child: Container(
                    // height: 230,
                    child: Column(
                      children: [
                        CustomListTile(
                          text: "Notification",
                          leadingIcon: Icons.notification_important,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Multi Store",
                          leadingIcon: Icons.store,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.multiStoreScreen}");
                          },
                        ),
                        Divider(
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Settings",
                          leadingIcon: Icons.settings,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.settingsScreen}");},
                        ),
                        Divider(
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Share",
                          leadingIcon: Icons.share,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Login/Logout",
                          leadingIcon: Icons.login,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {},
                        ),
                      ],
                    ),
                  ),
                ),
                GapWidget(size: -5),
                Card(
                  elevation: 5,
                  color: Colors.grey[200],
                  child: Container(
                    // height: 120,
                    child: Column(
                      children: [
                        CustomListTile(
                          text: "Contact Us",
                          leadingIcon: Icons.support_agent_rounded,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            context.push("/${RouteGenerate.contactUsScreen}");
                          },
                        ),
                        Divider(
                          
                          height: 1,
                        ),
                        CustomListTile(
                          text: "About Us",
                          leadingIcon: Icons.more,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
    // var param1 = "param1";
    // var param2 = "param2";
    // var param3 = "param3";
    //                         context.goNamed('webUrlScreen', queryParameters: {'titleMain': param1,'urlToLoad' : param2, 'bodyTags':param3});
                            WebViewPagesScreen webViewPagesScreen = WebViewPagesScreen(titleMain: "About Us", urlToLoad: "", bodyTags: "About Us Screen");
                            context.push("/${RouteGenerate.webUrlScreen}", extra: webViewPagesScreen);
                          },
                        ),
                        Divider(
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Privacy Policy",
                          leadingIcon: Icons.policy,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            WebViewPagesScreen webViewPagesScreen = WebViewPagesScreen(titleMain: "Privacy Policy", urlToLoad: "", bodyTags: "Privacy Policy Screen");
                            context.push("/${RouteGenerate.webUrlScreen}", extra: webViewPagesScreen);
                          },
                        ),
                        Divider(
                          
                          height: 1,
                        ),
                        CustomListTile(
                          text: "Replace-Return Policy",
                          leadingIcon: Icons.change_circle,
                          trailingIcon: Icons.arrow_forward_ios,
                          onPressed:  () {
                            WebViewPagesScreen webViewPagesScreen = WebViewPagesScreen(titleMain: "Replace-Return Policy", urlToLoad: "", bodyTags: "Replace-Return Policy Screen");
                            context.push("/${RouteGenerate.webUrlScreen}", extra: webViewPagesScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
