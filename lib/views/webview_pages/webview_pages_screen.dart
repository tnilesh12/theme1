import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme1/helper/dialogs.dart';
import 'package:theme1/helper/loading_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import '../../theme/app_colors.dart';
import '../../theme/app_theme.dart';
// import '../../utils/dialogs.dart';
// import '../../utils/loading_dialog.dart';
// import '../widgets/header_widget.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WebViewPagesScreen extends StatefulWidget {
  String title = '', url = '', body = '';

  WebViewPagesScreen(
      {super.key,
      required String titleMain,
      required String urlToLoad,
      required String bodyTags}) {
    title = titleMain;
    url = urlToLoad;
    body = bodyTags;
  }

  @override
  _TermsOfUseScreenState createState() => _TermsOfUseScreenState();
}

class _TermsOfUseScreenState extends State<WebViewPagesScreen> {
  late final WebViewController _controller;
  late WebViewController webViewControllerr;

  @override
  void initState() {
    super.initState();

    webViewManager(widget.url);
  }

  // loading website url
  Future<void> webViewManager(String url) async {
    _controller = WebViewController()
      ..enableZoom(false)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            LoadingDialog.show(context);
          },
          onPageFinished: (String url) {
            LoadingDialog.hide(context);
          },
          onWebResourceError: (WebResourceError error) {
            LoadingDialog.hide(context);
            Dialogs.ErrorAlertInOut(
                context: context,
                message: "Error page not found"//AppLocalizations.of(context)!.errorpagenotfound
              );
             
          },
          onNavigationRequest: (NavigationRequest request) async {
            return NavigationDecision.navigate;
          },
        ),
      );
    print("----------------------------------------url------------------------------ ${url}");
    widget.body.isNotEmpty ? _controller.loadHtmlString("""

      <!DOCTYPE html>
     
        <html>
          <head>
          <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=${AppTheme.bodyFont}&display=swap" rel="stylesheet">
          <meta name="viewport" content="width=device-width, initial-scale=0.8">
           <style>
           .change
           {
           font-family: '${AppTheme.bodyFont}', serif;
           }
             </style> 
          </head>
          <body class="change" style='"margin: 0; padding: 0;'>
            ${widget.body}
          </body>
        </html>
      """) : _controller.loadRequest(Uri.parse(url));

    webViewControllerr = _controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            widget.title
          ),
        ),
        body: Container(
            color: AppTheme.white,
            width: MediaQuery.of(context).size.width,
            padding:widget.body.isEmpty?EdgeInsets.all(0): EdgeInsets.all(10),

            child: WebViewWidget(
            
              controller: _controller,
            )));
  }
}
