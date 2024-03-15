import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/views/cart_screen/cart_screen.dart';
import 'package:theme1/views/checkout/checkout_screen.dart';
import 'package:theme1/views/common_screens/error_screen.dart';
import 'package:theme1/views/favorite/favorite_list_screen.dart';
import 'package:theme1/views/product_details_screen/product_details_screen.dart';
import 'package:theme1/views/profile_screen/address_list_screen.dart';
import 'package:theme1/views/profile_screen/change_pass_screen.dart';
import 'package:theme1/views/profile_screen/multi_store_list_screen.dart';
import 'package:theme1/views/profile_screen/order_list_screen.dart';
import 'package:theme1/views/profile_screen/profile_screen.dart';
import 'package:theme1/views/profile_screen/address_screen.dart';
import 'package:theme1/views/profile_screen/contact_us_screen.dart';
import 'package:theme1/views/profile_screen/setting_screen.dart';
import 'package:theme1/views/screens/auth/forgot_pass_screen.dart';
import 'package:theme1/views/screens/auth/intro_screen.dart';
import 'package:theme1/views/screens/dashboard_screen.dart';
import 'package:theme1/views/screens/auth/login_screen.dart';
import 'package:theme1/views/screens/auth/sign_up_screen.dart';
import 'package:theme1/views/screens/splash_screen/splash_screen.dart';
import 'package:theme1/views/webview_pages/webview_pages_screen.dart';

class RouteGenerate {
  // static const String signUpScreen = "/"; //"/";
  static const String introScreen = "intro_screen";
  static const String signUpScreen = "signup_screen";

  static const String splashScreen = "/"; //"splash_screen";
  // static const String onBoardingScreen = "on_boarding_screen";
  // static const String onBoardingTwoScreen = "on_boarding_two_screen";
  static const String loginScreen = "login_screen";

  static const String forgotPassScreen = "forgot_pass_screen";
  static const String homeScreen = "home_screen";
  static const String productDetailsScreen = "product_details_screen";
  static const String cartScreen = "cart_screen";
  static const String profileScreen = "profile_screen";
  static const String addressScreen = "address_screen";
  static const String addressListscreen = "address_list_screen";
  static const String orderListScreen = "order_list_screen";
  static const String multiStoreScreen = "multi_store_list_screen";
  // static const String orderDetailsScreen = "order_detail_screen";
  // // static const String favoriteScreen = "/favorite_screen";
  static const String favoriteListScreen = "favorite_list_Screen";
  static const String contactUsScreen = "contact_us_screen";
  static const String changePassScreen = "change_pass_screen";
  static const String settingsScreen = "setting_screen";
  // static const String termsOfUseScreen = "terms_of_use_screen";
  // static const String blogScreen = "blog_screen";
  // static const String pageScreen = "page_screen";
  // static const String pageViewScreen = "page_view_screen";
  // static const String aboutScreen = "about_screen";
  // static const String affiliateScreen = "affiliate_screen";
  // static const String privacyPolicyScreen = "privacy_policy_screen";
  // static const String refundPolicyScreen = "refund_policy_screen";
  // static const String shippingPolicyScreen = "shipping_policy_screen";
  // static const String countryCodeScreen = "country_code_screen";
  // static const String productListScreen = "product_list_screen";
  // static const String passwordUpdateScreen = "password_update_screen";
  // static const String stateCodeScreen = "state_code_screen";
  static const String checkoutScreen = "checkout_screen";
  // static const String productFilterScreen = "product_filter_screen";
  // static const String webCheckoutScreen = "web_checkout_screen";
  // static const String thanksScreen = "thanks_screen";
  // static const String oderProcessScreen = "oder_process_screen";
  // static const String oderProcesStopScreen = "oder_proces_stop_screen";
  // static const String selectAddresScreen = "select_address_screen";
  // static const String oderSummaryScreen = "oder_summary_screen";
  // static const String blogPostScreen = "blog_post_screen";
  // static const String blogHandleScreen = "blog_handle_screen";
  // static const String pageByIdScreen = "page_by_id_screen";
  // static const String searchScreen = "search_screen";
  // // static const String contactus = "contactus";
  // static const String contactFormScreen = "contact_form_screen";
  static const String webUrlScreen = "web_url_screen";

  /// This handles '/' and '/details'.
  static final goRouter = GoRouter(
    // final screenWidth = 360.0;
    // final screenHeight = 640.0;

    routes: [
      GoRoute(
        path: splashScreen,
        builder: (_, __) {
          return kIsWeb
              ? Scaffold(
                  body: Center(
                    child: Container(
                      width: 360.0,
                      height: 840.0,
                      child: Navigator(
                        onGenerateRoute: (settings) {
                          return MaterialPageRoute(
                              builder: (context) => SplashScreen());
                        },
                      ),
                    ),
                  ),
                )
              : SplashScreen();
        },
        //  Scaffold(
        //    appBar: AppBar(title: const Text('Home Screen')),
        //  ),
        routes: [
          GoRoute(path: signUpScreen, builder: (_, __) => SignUpScreen()),
          GoRoute(path: introScreen, builder: (_, __) => IntroScreen()),
          GoRoute(
            path: 'redirectPage',
            builder: (_, __) => Scaffold(
              appBar: AppBar(title: const Text('Redirect Page Screen')),
            ),
          ),
          GoRoute(path: loginScreen, builder: (_, __) => LoginScreen()),
          GoRoute(path: homeScreen, builder: (_, __) => DashboardScreen()),

          //  GoRoute(
          //    path: splashScreen,
          //    builder: (_, __) => SplashScreen()
          //  ),
          //  GoRoute(
          //    path: onBoardingScreen ,
          //    builder: (_, __) => OnBoardingScreen()
          //  ),
          //  GoRoute(
          //    path: productFilterScreen,
          //    builder: (_, __) => ProductFilterScreen()
          //  ),
          //  GoRoute(
          //    path: onBoardingTwoScreen,
          //    builder: (_, __) => OnBoardingTwoScreen()
          //  ),
          GoRoute(
              path: forgotPassScreen, builder: (_, __) => ForgetPassScreen()),
          GoRoute(
              path: productDetailsScreen,
              builder: (_, __) => ProductDetailsScreen()),
          GoRoute(path: cartScreen, builder: (_, __) => CartScreen()),
          GoRoute(
              path: profileScreen,
              builder: (_, __) => ProfileScreen(
                    isOpenedFromBottomBar: false,
                  )),
          GoRoute(path: addressScreen, builder: (_, __) => AddressScreen()),
          GoRoute(
              path: addressListscreen, builder: (_, __) => AddressListScreen()),
          GoRoute(path: orderListScreen, builder: (_, __) => OrderListScreen()),
          GoRoute(
              path: multiStoreScreen,
              builder: (context, state) => MultiStoreScreen()),
          GoRoute(
              path: changePassScreen,
              builder: (context, state) => ChangePassScreen()),
          GoRoute(
              path: settingsScreen,
              builder: (context, state) => SettingScreen()),
          //    GoRoute(
          //    path: orderDetailsScreen,
          //    builder: (_, __) => OrderDetailScreen()
          //  ),
          GoRoute(
              path: favoriteListScreen,
              builder: (_, __) => FavoriteListScreen()),
          GoRoute(path: contactUsScreen, builder: (_, __) => ContactUsScreen()),
          //    GoRoute(
          //    path: termsOfUseScreen ,
          //    builder: (_, __) => TermsOfUseScreen()
          //  ),
          //    GoRoute(
          //    path: blogScreen,
          //    builder: (_, __) => BlogScreen()
          //  ),
          //    GoRoute(
          //    path: pageScreen ,
          //    builder: (_, __) => PageScreen()
          //  ),
          //    GoRoute(
          //    path: pageViewScreen,
          //    builder: (_, __) => PageViewScreen()
          //  ),
          //    GoRoute(
          //    path: aboutScreen,
          //    builder: (_, __) => AboutScreen()
          //  ),
          //    GoRoute(
          //    path: affiliateScreen,
          //    builder: (_, __) => AffiliateScreen()
          //  ),
          //    GoRoute(
          //    path: privacyPolicyScreen,
          //    builder: (_, __) => PrivacyPolicyScreen()
          //  ),
          //    GoRoute(
          //    path: refundPolicyScreen,
          //    builder: (_, __) => RefundPolicyScreen()
          //  ),
          //    GoRoute(
          //    path:shippingPolicyScreen ,
          //    builder: (_, __) => ShippingPolicyScreen()
          //  ),
          //    GoRoute(
          //    path:countryCodeScreen ,
          //    builder: (_, __) => CountryCodeScreen()
          //  ),
          //    GoRoute(
          //    path: productListScreen,
          //    builder: (_, __) => productListScreen()
          //  ),
          //    GoRoute(
          //    path: passwordUpdateScreen,
          //    builder: (_, __) => PasswordUpdateScreen()
          //  ),
          //    GoRoute(
          //    path: stateCodeScreen,
          //    builder: (_, __) => StateCodeScreen()
          //  ),
          GoRoute(path: checkoutScreen, builder: (_, __) => CheckoutScreen()),
          //   GoRoute(
          //    path: productFilterScreen,
          //    builder: (_, __) => ProductFilterScreen()
          //  ),
          //   GoRoute(
          //    path: webCheckoutScreen,
          //    builder: (_, __) => WebCheckoutScreen()
          //  ),
          //   GoRoute(
          //    path:thanksScreen ,
          //    builder: (_, __) => ThanksScreen()
          //  ),
          //   GoRoute(
          //    path: oderProcessScreen,
          //    builder: (_, __) => OderProcessScreen()
          //  ),
          //   GoRoute(
          //    path: oderProcesStopScreen,
          //    builder: (_, __) => OderProcesStopScreen()
          //  ),
          //   GoRoute(
          //    path: selectAddresScreen,
          //    builder: (_, __) => SelectAddresScreen()
          //  ),
          //   GoRoute(
          //    path:oderSummaryScreen ,
          //    builder: (_, __) => OderSummaryScreen()
          //  ),
          //  GoRoute(
          //    path: blogPostScreen,
          //    builder: (_, __) => BlogPostScreen()
          //  ),
          //  GoRoute(
          //    path: blogHandleScreen,
          //    builder: (_, __) => BlogHandleScreen()
          //  ),
          //  GoRoute(
          //    path:pageByIdScreen ,
          //    builder: (_, __) => PageByIdScreen()
          //  ),
          //  GoRoute(
          //    path:searchScreen ,
          //    builder: (_, __) => SearchScreen()
          //  ),
          //  GoRoute(
          //    path: contactFormScreen,
          //    builder: (_, __) => ContactFormScreen()
          //  ),
          GoRoute(
              path: webUrlScreen,
              builder: (_, state) {
                WebViewPagesScreen webViewPagesScreen =
                    state.extra as WebViewPagesScreen;
                return WebViewPagesScreen(
                    titleMain: webViewPagesScreen.title,
                    urlToLoad: webViewPagesScreen.url,
                    bodyTags: webViewPagesScreen.body);
              }
              // =>WebViewPagesScreen(
              // Sample sample = state.extra as Sample;
              //           // titleMain: state.uri.queryParameters['titleMain']!,
              //           // urlToLoad: state.uri.queryParameters['urlToLoad']!,
              //           // bodyTags: state.uri.queryParameters['bodyTags']!,
              //          )
              ),
        ],
      ),
    ],
    //  errorPageBuilder: (context, state) {
    //    return ErrorScreen(onBack: onBack)
    //  },
  );

  /*
  static GoRouter returnRouter() {//bool isAuth) {
    GoRouter router = GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          name: signUpScreen,
          path: "/",
          pageBuilder: (context, state) {
            return MaterialPage(child: SignUpScreen());
          },
        ),
        // GoRoute(
        //   // name: MyAppRouteConstants.profileRouteName,
          // path: '/profile/:username/:userid',
        //   pageBuilder: (context, state) {
        //     return MaterialPage(
        //         child: Profile(
        //           userid: state.params['userid']!,
        //           username: state.params['username']!,
        //         ));
        //   },
        // ),
        //  GoRoute(
        //     path: 'redirectPage',
        //     builder: (_, __) => Scaffold(
        //       appBar: AppBar(title: const Text('Redirect Page Screen')),
        //     ),
        //   ),
        GoRoute(
          // name: MyAppRouteConstants.aboutRouteName,
          name: loginScreen,
          path: "/login_screen",
          pageBuilder: (context, state) {
            return MaterialPage(child: LoginScreen());
          },
        ),
        GoRoute(
          // name: MyAppRouteConstants.contactUsRouteName,
          name: homeScreen,
          path: homeScreen,
          pageBuilder: (context, state) {
            return MaterialPage(child: DashboardScreen());
          },
        )
      ],
      // errorPageBuilder: (context, state) {
      //   return MaterialPage(child: ErrorScreen(onBack: {},));
      // },
    );
    return router;
  }
 */
}
