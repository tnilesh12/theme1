// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:thesatanictemple/theme/app_assets.dart';
// // import 'package:thesatanictemple/theme/app_colors.dart';
// // import 'package:thesatanictemple/theme/app_theme.dart';
// // import 'package:thesatanictemple/views/widgets/button_widget.dart';
// // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // import '../widgets/textfield_widget.dart';

// class ContactUsScreen extends StatefulWidget {
//   const ContactUsScreen({super.key});

//   @override
//   State<ContactUsScreen> createState() => _ContactUsScreenState();
// }

// class _ContactUsScreenState extends State<ContactUsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//       ),
//       body: Container(
//               color: Theme.of(context).colorScheme.background,
//         child: ListView(
//           children: [
//             Center(child:   Container(
//               height: 200,
//               child: Image.asset(AppAssets.support),
//             )),
//             Center(child:  Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     margin: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                         color: Colors.grey.shade100,
//                         border: Border.all(
//                           color: Colors.grey.shade300,
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                               backgroundColor: Colors.blue.shade200,
//                               radius: 20,
//                               child: Icon(
//                                 Icons.call,
//                                 color: Colors.blue,
//                                 size: 25,
//                               )),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(AppLocalizations.of(context)!.call,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleSmall!
//                                   .copyWith(color: Colors.blue))
//                         ]),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     margin: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                         color: Colors.grey.shade100,
//                         border: Border.all(
//                           color: Colors.grey.shade300,
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                               backgroundColor: Colors.red.shade200,
//                               radius: 20,
//                               child: Icon(
//                                 Icons.mail,
//                                 color: Colors.red,
//                                 size: 25,
//                               )),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text("Email",// AppLocalizations.of(context)!.email,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleSmall!
//                                   .copyWith(color: Colors.red))
//                         ]),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     margin: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                         color: Colors.grey.shade100,
//                         border: Border.all(
//                           color: Colors.grey.shade300,
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                               backgroundColor: Colors.green.shade200,
//                               radius: 20,
//                               child: Icon(
//                                 Icons.chat_bubble,
//                                 color: Colors.green,
//                                 size: 25,
//                               )),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text("Chat",// AppLocalizations.of(context)!.chat,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleSmall!
//                                   .copyWith(color: Colors.green))
//                         ]),
//                   ),
//                 )
//               ],
//             )),
//             Expanded(
//                 child: Container(
//                   height: 330,
//                     padding: EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                         color: Colors.grey.shade100,
//                         borderRadius: BorderRadius.all(Radius.circular(40))),
//                     width: MediaQuery.of(context).size.width,
//                     child: Column(
//                       children: [
//                         Text("Write Your Query Here",
//                           // AppLocalizations.of(context)!.writeYourQueryHere,
//                           style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppTheme.black),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         TextFieldWidget().textFieldWidget(
//                             context, AppLocalizations.of(context)!.name, TextEditingController(), AppLocalizations.of(context)!.name),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         TextFieldWidget().textFieldWidget(
//                             context, AppLocalizations.of(context)!.email, TextEditingController(), AppLocalizations.of(context)!.email),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         TextFieldWidget().textFieldWidgetTextArea(context, AppLocalizations.of(context)!.message,
//                             TextEditingController(), AppLocalizations.of(context)!.message),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         ButtonWidget().buttonWidget(context, AppLocalizations.of(context)!.submit, () => {})
//                       ],
//                     )))
//           ],
//         ),
//       )
//     );
//   }
// }
