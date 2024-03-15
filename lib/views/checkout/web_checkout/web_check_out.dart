// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:thesatanictemple/theme/app_colors.dart';
// import 'package:thesatanictemple/theme/app_theme.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// import '../../../utils/dialogs.dart';
// import '../../../utils/loading_dialog.dart';

// class WebCheckoutScreen extends StatefulWidget {
//   String url;

//   WebCheckoutScreen(this.url, {super.key});

//   @override
//   State<WebCheckoutScreen> createState() => _WebCheckoutScreenState();
// }

// class _WebCheckoutScreenState extends State<WebCheckoutScreen> {
//   late final WebViewController _controller;

//   @override
//   void initState() {
//     super.initState();


//     // loading website url
//     _controller = WebViewController()
//       ..enableZoom(false)
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {
        
//             if(url.contains("thank_you"))
//               {
  
                          //context.pop
//               Navigator.of(context).pop(true);
//             }
          
//           },
//           onPageFinished: (String url) {
          
//           },
//           onWebResourceError: (WebResourceError error) {
           
//             Dialogs.ErrorAlertInOut(
//                 context: context, message: 'Error page not found');
//           },
//           onNavigationRequest: (NavigationRequest request) async {
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
    

//       ..loadRequest(Uri.parse(widget.url));
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//         resizeToAvoidBottomInset: true,
//         appBar: AppBar(
//           title: Text(""),
//         ),
//         body: Container(
//               color: Theme.of(context).colorScheme.background,
//             width: MediaQuery.of(context).size.width,
//             child: WebViewWidget(
//               controller: _controller,
//             )));
//   }
// }
