import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/app_assets.dart';

// import '../theme/app_colors.dart';

class LoadingDialog extends StatelessWidget {
  static bool showing = false;
  static void show(BuildContext context, {Key? key}) {
    showing = true;
    showDialog<void>(
        context: context,
        barrierColor: Colors.black38,
        useRootNavigator: false,
        barrierDismissible: false,
        builder: (_) => LoadingDialog(key: key),
      ).then((_) => FocusScope.of(context).requestFocus(FocusNode()));
      }

  static void hide(BuildContext context) {
    if(showing){
    Navigator.pop(context);
    }
    
    }

  LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Card(
          color: Colors.transparent,
          child: Container(
              color: Colors.transparent,
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
               AppAssets.progressImg,
                height: 200.0,
                width: 200.0,
              ),),
        ),
      ),
    );
  }
}
