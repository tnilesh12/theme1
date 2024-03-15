import 'dart:async';

import 'package:flutter/material.dart';
// import '../theme/app_colors.dart';
// import '../theme/app_theme.dart';

enum DialogAction { YES, ABORT }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(title,   style: Theme.of(context)
              .textTheme
              .bodyLarge!.copyWith(color: Colors.black),),
          content: Text(body,   style: Theme.of(context)
              .textTheme
              .titleMedium!.copyWith(color: Colors.black.withAlpha(120)),),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(DialogAction.ABORT),
              child:  Text('No', style: Theme.of(context)
                  .textTheme
                  .titleMedium!.copyWith(color: Colors.black.withAlpha(120))),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(DialogAction.YES),
              child:  Text(
                'Yes',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!.copyWith(color: Colors.black.withAlpha(120)),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogAction.ABORT;
  }

  static fullScreenDialog(
      BuildContext context, String title, Function() onPressed) async {
    await showGeneralDialog(
      context: context,
      barrierColor: Colors.cyan,
      // Background color
      barrierDismissible: false,
      barrierLabel: ' Full Screen Dialog',
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FlutterLogo(
              size: 100,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            ElevatedButton(onPressed: onPressed, child: const Text("Okay"))
          ],
        );
      },
    );
  }

  static ErrorAlertInOut({
    required BuildContext context,
    String? message,
  }) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.2),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(opacity: a1.value, child: widget),
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (c, animation1, animation2) {
          Timer timer = Timer(const Duration(milliseconds: 3000), () {
            Navigator.pop(context);
          });
          return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            AlertDialog(
              backgroundColor: Colors.red,//ErrorColor,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Text(message ?? "Error!",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white))),
                  ],
                ),
              ),
            )
          ]);
        });
  }


  static SuccessAlertInOut( {
    required BuildContext context,
    String? message,
  }) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.2),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(opacity: a1.value, child: widget),
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          Timer timer = Timer(const Duration(milliseconds: 3000), () {
        try{
              Navigator.pop(context);
        }
        catch(e)
        {
          print(e);
        }
          });
          return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            AlertDialog(
              backgroundColor: Colors.green,//SuccessColor,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Text(message ?? "Error!",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white))),
                  ],
                ),
              ),
            )
          ]);
        });
  }
}
