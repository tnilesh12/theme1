// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:theme1/theme/custom_text_theme.dart';
// import 'package:theme1/theme/my_text_style.dart';
// import 'package:theme1/views/widgets/common/custom_button.dart';
// import '../../../theme/app_theme.dart';

// import '../../../route/route_generate.dart';
// import '../../../shopify_graphql/models/src/shopify_user/address/address.dart';
// import '../../../theme/app_colors.dart';
// import '../bloc/checkout_screen_bloc.dart';

// class CheckoutShippingView {
//   Widget GetShippingView() {
//     bool checkedValue = true;
//     return Container(child:
//         BlocBuilder<CheckoutScreenBloc, CheckoutScreenState>(
//             builder: (context, state) {
//       if (state is CheckoutScreenAddressFound) {
//         if (state.addressShipping != null) {
//           return Container(
//             padding: EdgeInsets.all(15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         child: 
//                         Text(
//                           "Shipping Address",
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutAddress, context)
//                           // style: Theme.of(context)
//                           //     .textTheme
//                           //     .bodyLarge!
//                               // .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
//                         ),
//                       ),
//                       Container(
//                         // height: 30,
//                         // decoration: BoxDecoration(
//                         //     borderRadius: BorderRadius.circular(10),
//                         //     color: AppTheme.buttonbackColor
//                         //     ),
//                         margin: EdgeInsets.only(bottom: 5, right: 0, top: 5),
//                         child: 
//                         CustomButton(
//                           text:"Change",
//                           onPressed: () async {
//                             // Address? address = await Navigator.pushNamed(
//                             //     context, RouteGenerate.addresslistscreen,
//                             //     arguments: {true}) as Address?;

//                             // if (address != null) {
//                             //   context.read<CheckoutScreenBloc>().add(
//                             //       CheckoutScreenAddressChangeEvent(address!));
//                             // }
//                           },
//                         ),
//                         // TextButton(
//                         //   child: 
//                         //   Text(
//                         //     "Change",
//                         //     style: Theme.of(context)
//                         //         .textTheme
//                         //         .bodySmall!
//                         //         .copyWith(color: AppTheme.white,fontFamily: 'Cinzel'),
//                         //   ),
//                         //   onPressed: () async {
//                         //     Address? address = await Navigator.pushNamed(
//                         //         context, RouteGenerate.addresslistscreen,
//                         //         arguments: {true}) as Address?;

//                         //     if (address != null) {
//                         //       context.read<CheckoutScreenBloc>().add(
//                         //           CheckoutScreenAddressChangeEvent(address!));
//                         //     }
//                         //   },
//                         // ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                       "${state.addressShipping!.firstName} ${state.addressShipping!.lastName}",
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutUserName, context)
//                       // style: Theme.of(context)
//                       //     .textTheme
//                       //     .bodyMedium!
//                       //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel')
//                       ),
//                 ),
//                 Container(
//                   child: Text(
//                     "${state.addressShipping!.GetFormattedAddress()}",
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutAddress, context)
//                     // style: Theme.of(context)
//                     //     .textTheme
//                     //     .bodyMedium!
//                     //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel'),
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     state.addressShipping!.phone.toString(),
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
//                     // style: Theme.of(context)
//                     //     .textTheme
//                     //     .bodySmall!
//                     //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel'),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         } else {
//           return GetDefualtView(context);
//         }
//       } else {
//         return GetDefualtView(context);
//       }
//     }));
//   }

//   Widget GetDefualtView(BuildContext context) {
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.all(15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   child: Text(
//                     "Shipping Address",
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutAddress, context)
//                     // style: Theme.of(context)
//                     //     .textTheme
//                     //     .bodyLarge!
//                     //     .copyWith(color: AppTheme.black),
//                   ),
//                 ),
//                 Container(
//                   height: 30,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: AppTheme.buttonbackColor),
//                   margin: EdgeInsets.only(bottom: 5, right: 0, top: 5),
//                   child: TextButton(
//                     child: Text(
//                       "Add",
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
//                       // style: Theme.of(context)
//                       //     .textTheme
//                       //     .bodySmall!
//                       //     .copyWith(color: AppTheme.white,fontFamily: 'Cinzel'),
//                     ),
//                     onPressed: () async {
//                       Address? address = await Navigator.pushNamed(
//                           context, RouteGenerate.addresslistscreen,
//                           arguments: {true}) as Address?;

//                       if (address != null) {
//                         context.read<CheckoutScreenBloc>().add(
//                             CheckoutScreenAddressChangeEvent(address!));
//                       }
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(bottom: 15, left: 15),
//             child: Text(
//               "NO Address Associated with your account",
//                                 style: CustomTextTheme.getTextStyle(MyTextStyle.CheckoutDefault, context)
//               // style: Theme.of(context)
//               //     .textTheme
//               //     .bodySmall!
//               //     .copyWith(color: AppTheme.black.withAlpha(120),fontFamily: 'Cinzel'),
//             ),
//           ),
//         ]);
//   }
// }
