// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:path/path.dart';
// import 'package:thesatanictemple/views/contact_us/bloc/contact_us_bloc.dart';
// import 'package:thesatanictemple/views/dashboard_bottom_base/entry_point.dart';
// import 'package:thesatanictemple/views/favorite/bloc/favorite_list_screen_bloc.dart';
// import 'package:thesatanictemple/views/favorite/favorite_list_screen.dart';
// import 'package:thesatanictemple/views/pages/bloc/pageByIdBloc.dart';
// import 'package:thesatanictemple/views/search/search_screen_full.dart';
// import '../shopify_graphql/models/models.dart';
// import '../shopify_graphql/models/src/collection/collection.dart';
// import '../shopify_graphql/models/src/country/CountryListData.dart';
// import '../shopify_graphql/models/src/menus_details/items.dart';

// //
// // import '../views/password_update/password_update_screen.dart';
// // import '../views/about/about_screen.dart';
// // import '../views/address/address_screen.dart';
// // import '../views/address/bloc/address_screen_bloc.dart';
// // import '../views/addresslist/addresslist_screen.dart';
// // import '../views/addresslist/bloc/addresslist_screen_bloc.dart';
// // import '../views/affiliates/affiliate_screen.dart';
// // // import '../views/blog/blog.dart';
// // import '../views/cart_screen/bloc/cart_screen_bloc.dart';
// // import '../views/checkout/bloc/checkout_screen_bloc.dart';
// // import '../views/checkout/checkout_screen.dart';
// // import '../views/checkout/web_checkout/web_check_out.dart';
// // import '../views/contact_us/contact_us_screen.dart';
// // import '../views/countrycode/bloc/country_code_bloc.dart';
// // import '../views/dashboard_bottom_base/category/bloc/category_screen_bloc.dart';
// // import '../views/dashboard_bottom_base/home/bloc/home_bloc.dart';
// // import '../views/dashboard_bottom_base/more/bloc/more_screen_bloc.dart';
// // import '../views/favorites/favorite_screen.dart';
// // import '../views/forgot_password/bloc/forgotpass_bloc.dart';
// // import '../views/forgot_password/forgot_pass_screen.dart';
// // import '../views/dashboard_bottom_base/dashboard_base.dart';
// // import '../views/login/bloc/login_bloc.dart';
// // import '../views/login/login_screen.dart';
// // import '../views/onbording_screen/onbording_screen.dart';
// // import '../views/onbording_screen_two/onbording_screen_two.dart';
// // import '../views/order/bloc/order_list_screen_bloc.dart';
// // import '../views/order/order_details_screen.dart';
// // import '../views/order/order_list_screen.dart';
// // import '../views/product_details_screen/bloc/product_details_screen_bloc.dart';
// // import '../views/product_details_screen/product_details_screen.dart';
// // import '../views/product_filter/product_filter_screen.dart';
// // import '../views/product_list/bloc/product_list_screen_bloc.dart';
// // import '../views/product_list/product_list_screen.dart';
// // import '../views/profile/bloc/profile_screen_bloc.dart';
// // import '../views/profile/profile_screen.dart';
// // import '../views/signup/signup_screen.dart';
// // import '../views/splash_screen/splash_screen.dart';
// //
// // import '../shopify_graphql/models/src/page/page.dart';
// // import '../views/blog/bloc/blogscreen_bloc.dart';
// // import '../views/blog/blogscreen.dart';
// // import '../views/blog_post/blog_post.dart';
// // import '../views/checkout/thanks_screen/thanks_screen.dart';
// // import '../views/oder_process/bloc/selectaddressscreenbloc.dart';
// // import '../views/oder_process/order_process_screen.dart';
// // import '../views/page/bloc/pagescreen_bloc.dart';
// // import '../views/page/pagescreen.dart';
// // import '../views/page_view/pageview_screen.dart';
// // import '../views/password_update/bloc/password_update_bloc.dart';
// // import '../views/cart_screen/cart_screen.dart';
// // import '../views/countrycode/country_code.dart';
// // import '../views/countrycode/state_code.dart';
// // import '../views/dashboard_bottom_base/bloc/bottom_base_bloc.dart';
// // import '../views/dashboard_bottom_base/search/bloc/search_screen_bloc.dart';
// // import '../views/privacy_policy/privacy_policyscreen.dart';
// // import '../views/product_filter/bloc/product_filter_bloc.dart';
// // import '../views/signup/bloc/signup_bloc.dart';
// // import '../views/splash_screen/bloc/splash_screen_bloc.dart';
// import '../globels.dart' as globals;
// import '../views/address/address_screen.dart';
// import '../views/address/bloc/address_screen_bloc.dart';
// import '../views/addresslist/addresslist_screen.dart';
// import '../views/addresslist/bloc/addresslist_screen_bloc.dart';
// import '../views/become_a_member_form/become_a_member_bloc/become_a_member_bloc.dart';
// import '../views/become_a_member_form/become_a_member_screen.dart';
// import '../views/blog/bloc/blogscreen_bloc.dart';
// import '../views/blog/bloc_blog_handle/blog_handle_bloc.dart';
// import '../views/blog/blog_handle_screen.dart';
// import '../views/blog/blog_post/blog_post.dart';
// import '../views/blog/blogscreen.dart';
// import '../views/cart_screen/bloc/cart_screen_bloc.dart';
// import '../views/cart_screen/cart_screen.dart';
// import '../views/category/bloc/category_screen_bloc.dart';
// import '../views/checkout/bloc/checkout_screen_bloc.dart';
// import '../views/checkout/checkout_screen.dart';
// import '../views/checkout/thanks_screen/thanks_screen.dart';
// import '../views/checkout/web_checkout/web_check_out.dart';
// import '../views/contact_form/contact_form_bloc.dart';
// import '../views/contact_form/contact_form_screen.dart';
// import '../views/contact_us/contact_us.dart';
// import '../views/countrycode/bloc/country_code_bloc.dart';
// import '../views/countrycode/country_code.dart';
// import '../views/countrycode/state_code.dart';
// import '../views/forgot_password/bloc/forgotpass_bloc.dart';
// import '../views/forgot_password/forgot_pass_screen.dart';
// import '../views/home/bloc/home_bloc.dart';
// import '../views/login/bloc/login_bloc.dart';
// import '../views/login/login_screen.dart';
// import '../views/more/bloc/more_screen_bloc.dart';
// import '../views/order/bloc/order_list_screen_bloc.dart';
// import '../views/order/order_details_screen.dart';
// import '../views/order/order_list_screen.dart';
// import '../views/pages/pageByIdScreen.dart';
// import '../views/password_update/bloc/password_update_bloc.dart';
// import '../views/password_update/password_update_screen.dart';
// import '../views/product_details_screen/bloc/product_details_screen_bloc.dart';
// import '../views/product_details_screen/product_details_screen.dart';
// import '../views/product_filter/bloc/product_filter_bloc.dart';
// import '../views/product_filter/product_filter_screen.dart';
// import '../views/product_list/bloc/product_list_screen_bloc.dart';
// import '../views/product_list/product_list_screen.dart';
// import '../views/profile/bloc/profile_screen_bloc.dart';
// import '../views/profile/profile_screen.dart';
// import '../views/search/bloc/search_screen_bloc.dart';
// import '../views/signup/bloc/signup_bloc.dart';
// import '../views/signup/signup_screen.dart';
// import '../views/splash_screen/bloc/splash_screen_bloc.dart';
// import '../views/splash_screen/splash_screen.dart';
// import '../views/webview_pages/webview_pages_screen.dart';

// class RouteGenerate {
//   static const String splashScreen = "/splash";
//   static const String onboardingScreen = "/onboarding";
//   static const String onboardingTwoScreen = "/onboarding_two";
//   static const String loginScreen = "/login";
//   static const String signScreen = "/signup";
//   static const String forgotScreen = "/forgot_pass";
//   static const String homeScreen = "/home";
//   static const String productDetailsScreen = "/product_details_screen";
//   static const String cartScreen = "/cart_screen";
//   static const String profileScreen = "/profile_screen";
//   static const String addressScreen = "/address_screen";
//   static const String addresslistscreen = "/addresslist_screen";
//   static const String orderListScreen = "/order_list_screen";
//   static const String orderDetailsScreen = "/order_detail_screen";
//   // static const String favoriteScreen = "/favorite_screen";
//   static const String favoriteListScreen = "/favorite_List_Screen";
//   static const String contactUsScreen = "/contactus_screen";
//   static const String termsOfUseScreen = "/terms_of_use_screen";
//   static const String blogScreen = "/blog_screen";
//   static const String pagescreen = "/pagescreen";
//   static const String pageviewscreen = "/pageviewscreen";
//   static const String aboutScreen = "/about_screen";
//   static const String affiliateScreen = "/affiliate_screen";
//   static const String privacyPolicyScreen = "/privacy_policy_screen";
//   static const String refundPolicyScreen = "/refund_policy_screen";
//   static const String shippingPolicyScreen = "/shipping_policy_screen";
//   static const String countryCodeScreen = "/country_Code_Screen";
//   static const String productListScreen = "/product_List_Screen";
//   static const String passwordUpdateScreen = "/password_Update_Screen";
//   static const String stateCodeScreen = "/state_code_screen";
//   static const String checkoutScreen = "/checkout_screen";
//   static const String productFilterScreen = "/productFilterScreen";
//   static const String webcheckoutScreen = "/webcheckoutScreen";
//   static const String thanksScreen = "/thanksScreen";
//   static const String oderProcessScreen = "/oderprocessscreen";
//   static const String oderProcesstopScreen = "/oderprocesstopscreen";
//   static const String selectAddressscreen = "/selectaddressscreen";
//   static const String odersummaryscreen = "/odersummaryscreen";
//   static const String blogpostscreen = "/blogpostscreen";
//   static const String blogHandleScreen = "/blogHandleScreen";
//   static const String pageByIdScreen = "/PageByIdScreen";
//   static const String searchScreen = "/searchScreen";
//   static const String contactus = "/contactus";
//   static const String contactFormScreen = "/contactformscreen";
//   static const String becomeMemberScreen = "/becomememberscreen";
//   static const String weburlScreen = "/weburlScreen";

//   static Widget TransitionBuilderMethod(
//       BuildContext context,
//       Animation<double> animation,
//       Animation<double> secondaryAnimation,
//       Widget child) {
//     const begin = Offset(1.0, 0.0);
//     const end = Offset.zero;
//     const curve = Curves.ease;

//     var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//     return SlideTransition(
//       position: animation.drive(tween),
//       child: child,
//     );
//   }

//   static Route<dynamic> generateRoute(RouteSettings setting) {
//     final args = setting.arguments;
//     switch (setting.name) {

//       // case blogScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider(
//       //             create: (context) {
//       //               return BlogScreenBloc();
//       //             },
//       //             child: BlogScreen(),
//       //           ));

//       // case blogHandleScreen:
//       //   return MaterialPageRoute(
//       //     builder: (context) =>
//       //         BlogScreenHandle((args as Set<Object?>).elementAt(0) as String),
//       //   );

//       // case blogpostscreen:
//       //   return PageRouteBuilder(
//       //       transitionDuration: Duration(seconds: 1),
//       //       pageBuilder: (_, __, ___) => BlogPostScreen(
//       //           (args as Set<Object?>).elementAt(0) as Article,
//       //           (args as Set<Object?>).elementAt(1) as int));

//       // case countryCodeScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<CountryCodeBloc>(
//       //           create: (context) {
//       //             return CountryCodeBloc();
//       //           },
//       //           child: CountryCode()));

//       // case contactFormScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<ContactFormScreenBloc>(
//       //             create: (context) {
//       //               return ContactFormScreenBloc();
//       //             },
//       //             child: ContactFormScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );
//       // case becomeMemberScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<BecomeAMemberScreenBloc>(
//       //             create: (context) {
//       //               return BecomeAMemberScreenBloc();
//       //             },
//       //             child: BecomeAMemberScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case webcheckoutScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebCheckoutScreen(
//       //           (args as Set<Object?>).elementAt(0) as String));

//       // //
//       // //
//       // //      case oderProcessScreen:
//       // //        return MaterialPageRoute(
//       // //            builder: (context) => MultiBlocProvider(
//       // //                  providers: [
//       // //                    BlocProvider<SelectAddressListScreenBloc>(
//       // //                      create: (context) => SelectAddressListScreenBloc(),
//       // //                    ),
//       // //                    BlocProvider<CheckoutScreenBloc>(
//       // //                      create: (context) => CheckoutScreenBloc(),
//       // //                    ),
//       // //                  ],
//       // //                  child: OrderProcessScreen(),
//       // //                ));
//       // //
//       // case productFilterScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<ProductFilterScreenBloc>(
//       //           create: (context) {
//       //             return ProductFilterScreenBloc(
//       //                 (args as Set<Object?>).elementAt(0).toString());
//       //           },
//       //           child: ProductFilterScreen()));
//       // //
//       // case pageByIdScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<PageScreenByIdBloc>(
//       //           create: (context) {
//       //             return PageScreenByIdBloc(
//       //                 (args as Set<Object?>).elementAt(0) as String);
//       //           },
//       //           child: PageByIdScreen(
//       //               (args as Set<Object?>).elementAt(0) as String,
//       //               (args as Set<Object?>).elementAt(1) as String)));

//       // case checkoutScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<CheckoutScreenBloc>(
//       //             create: (context) {
//       //               return CheckoutScreenBloc();
//       //             },
//       //             child: CheckoutScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case productListScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<ProductListScreenBloc>(
//       //             create: (context) {
//       //               return ProductListScreenBloc();
//       //             },
//       //             child: ProductListScreen(
//       //                 (args as Set<Object?>).elementAt(0).toString(),
//       //                 (args as Set<Object?>).elementAt(1).toString())),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case stateCodeScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<CountryCodeBloc>(
//       //           create: (context) {
//       //             return CountryCodeBloc();
//       //           },
//       //           child: StateCode(
//       //               (args as Set<Object?>).elementAt(0) as Countries)));

//       // case profileScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<ProfileScreenBloc>(
//       //           create: (context) {
//       //             return ProfileScreenBloc();
//       //           },
//       //           child: ProfileScreen(
//       //               (args as Set<Object?>).elementAt(0) as ShopifyUser)));
//       // case orderListScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<OderListScreenBloc>(
//       //           create: (context) {
//       //             return OderListScreenBloc();
//       //           },
//       //           child: OrderListScreen()));

//       // case orderDetailsScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<OderListScreenBloc>(
//       //           create: (context) {
//       //             return OderListScreenBloc();
//       //           },
//       //           child: OrderDetailsScreen(
//       //               order: (args as Set<Object?>).elementAt(0) as Order)));

//       // case addressScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<AddressScreenBloc>(
//       //           create: (context) {
//       //             return AddressScreenBloc();
//       //           },
//       //           child: AddressScreen((args as Set<Object?>).elementAt(0))));

//       // case addresslistscreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<AddressListScreenBloc>(
//       //           create: (context) {
//       //             return AddressListScreenBloc();
//       //           },
//       //           child: AddressListScreen(
//       //               (args as Set<Object?>).elementAt(0) as bool)));

//       // case contactus:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<ContactUsBloc>(
//       //             create: (context) {
//       //               return ContactUsBloc();
//       //             },
//       //             child: ContactUsScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // //
//       // //      case blogpostscreen:
//       // //        return MaterialPageRoute(
//       // //            builder: (context) =>
//       // //                BlogPostScreen( (args as Set<Object?>).elementAt(0) as Article)
//       // //                );
//       // //
//       // //
//       // //
//       // //      case pagescreen:
//       // //        return MaterialPageRoute(
//       // //            builder: (context) => BlocProvider(
//       // //                create: (context) {
//       // //                  return PageScreenBloc();
//       // //                },
//       // //                child: PageScreen()));
//       // //
//       // //
//       // //
//       // // case pageviewscreen:
//       // //        return MaterialPageRoute(
//       // //            builder: (context) =>
//       // //              PageViewScreen((args as Set<Object?>).elementAt(0) as Pagess)
//       // //                );
//       // //
//       // //
//       // case weburlScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebViewPagesScreen(
//       //             titleMain: (args as Set<Object?>).elementAt(0) as String,
//       //             urlToLoad: (args as Set<Object?>).elementAt(1) as String,
//       //             bodyTags: "",
//       //           ));
//       // case contactUsScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebViewPagesScreen(
//       //             titleMain: globals.shop.termsOfService!.title.toString(),
//       //             urlToLoad: globals.shop.termsOfService!.url.toString() ?? '',
//       //             bodyTags: globals.shop.termsOfService!.body.toString(),
//       //           ));
//       // case termsOfUseScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebViewPagesScreen(
//       //             titleMain: globals.shop.termsOfService!.title.toString(),
//       //             urlToLoad: globals.shop.termsOfService!.url.toString() ?? '',
//       //             bodyTags: globals.shop.termsOfService!.body.toString(),
//       //           ));

//       // case refundPolicyScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebViewPagesScreen(
//       //           titleMain: globals.shop.refundPolicy!.title.toString(),
//       //           urlToLoad: globals.shop.refundPolicy!.url.toString() ?? '',
//       //           bodyTags: globals.shop.refundPolicy!.body.toString()));
//       // case shippingPolicyScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebViewPagesScreen(
//       //           titleMain: globals.shop.shippingPolicy!.title.toString(),
//       //           urlToLoad: globals.shop.shippingPolicy!.url.toString() ?? '',
//       //           bodyTags: globals.shop.shippingPolicy!.body.toString()));

//       // case privacyPolicyScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => WebViewPagesScreen(
//       //           titleMain: globals.shop.privacyPolicy!.title.toString(),
//       //           urlToLoad: globals.shop.privacyPolicy!.url.toString() ?? '',
//       //           bodyTags: globals.shop.privacyPolicy!.body.toString()));

//       // //        return MaterialPageRoute(
//       // //            builder: (context) => const PrivacyPolicyScreen());
//       // //      case aboutScreen:
//       // //        return MaterialPageRoute(builder: (context) => const AboutScreen());
//       // //      case affiliateScreen:
//       // //        return MaterialPageRoute(builder: (context) => const AffiliateScreen());
//       // case splashScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<SplashScreenBloc>(
//       //           create: (context) {
//       //             return SplashScreenBloc();
//       //           },
//       //           child: SplashScreen()));
//       // //      case onboardingScreen:
//       // //        return PageRouteBuilder(
//       // //            pageBuilder: (context, animation, secondaryAnimation) =>
//       // //                const OnBordingScreen(),
//       // //            transitionsBuilder: TransitionBuilderMethod);
//       // //
//       // //      // MaterialPageRoute(builder: (context) => const OnBordingScreen());
//       // //      case onboardingTwoScreen:
//       // //        return PageRouteBuilder(
//       // //          pageBuilder: (context, animation, secondaryAnimation) =>
//       // //              const OnBoardingScreenTwo(),
//       // //          transitionsBuilder: TransitionBuilderMethod,
//       // //        );
//       // //
//       // case loginScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<LoginBloc>(
//       //             create: (context) {
//       //               return LoginBloc();
//       //             },
//       //             child:
//       //                 LoginScreen((args as Set<Object?>).elementAt(0) as bool)),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case signScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) => BlocProvider<
//       //             SignupBloc>(
//       //         create: (context) {
//       //           return SignupBloc();
//       //         },
//       //         child: SignupScreen((args as Set<Object?>).elementAt(0) as bool)),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case forgotScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<ForgotPassBloc>(
//       //             create: (context) {
//       //               return ForgotPassBloc();
//       //             },
//       //             child: const ForgotPassScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );
//       // case searchScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<SearchScreenBloc>(
//       //             create: (context) {
//       //               return SearchScreenBloc();
//       //             },
//       //             child: SearchScreenFull()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case homeScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         MultiBlocProvider(providers: [
//       //       BlocProvider<SearchScreenBloc>(create: (context) {
//       //         return SearchScreenBloc();
//       //       }),
//       //       BlocProvider<CategoryScreenBloc>(create: (context) {
//       //         return CategoryScreenBloc();
//       //       }),
//       //       BlocProvider<MoreScreenBloc>(create: (context) {
//       //         return MoreScreenBloc();
//       //       }),
//       //       BlocProvider<HomeBloc>(create: (context) {
//       //         return HomeBloc();
//       //       }),
//       //     ], child: DashboardBaseScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case productDetailsScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<ProductDetailsScreenBloc>(
//       //             create: (context) {
//       //               return ProductDetailsScreenBloc(
//       //                   (args as Set<String?>).elementAt(0).toString());
//       //             },
//       //             child: ProductDetailsScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );
//       // case cartScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<CartScreenBloc>(
//       //             create: (context) {
//       //               return CartScreenBloc();
//       //             },
//       //             child: CartScreen()),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );
//       // case thanksScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => ThanksScreen(
//       //           (args as Set<String?>).elementAt(0).toString(),
//       //           (args as Set<String?>).elementAt(1).toString()));

//       // case passwordUpdateScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<UpdatePasswordBloc>(
//       //       create: (context) {
//       //         return UpdatePasswordBloc();
//       //       },
//       //       child: PasswordUpdateScreen(),
//       //     ),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       // case favoriteListScreen:
//       //   return PageRouteBuilder(
//       //     pageBuilder: (context, animation, secondaryAnimation) =>
//       //         BlocProvider<FavoriteListScreenBloc>(
//       //             create: (context) {
//       //               return FavoriteListScreenBloc();
//       //             },
//       //             child: FavoriteListScreen()),
//       //     // (args as Set<Object?>).elementAt(0).toString(),
//       //     // (args as Set<Object?>).elementAt(1).toString())),
//       //     transitionsBuilder: TransitionBuilderMethod,
//       //   );

//       default:
//         return MaterialPageRoute(
//             builder: (context) => BlocProvider<SplashScreenBloc>(
//                 create: (context) {
//                   return SplashScreenBloc();
//                 },
//                 child: SplashScreen()));
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text("Error"),
//           centerTitle: true,
//         ),
//         body: const Center(
//           child: Text('Page Not Found'),
//         ),
//       );
//     });
//   }
// }
