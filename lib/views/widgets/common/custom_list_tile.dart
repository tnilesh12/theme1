import 'package:flutter/material.dart';
import 'package:theme1/theme/app_theme.dart';

class CustomListTile extends StatelessWidget {
  final String defaultFontFamily = 'Poppins-Medium.ttf';
  final double defaultFontSize = 18;
  final String text;
  final Function()? onPressed;
  // final Color? backgroundColor;
  final IconData? leadingIcon;
  final IconData? trailingIcon;

  CustomListTile(
      {super.key,
      required this.text,
      this.onPressed,
      this.leadingIcon,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        // color: Colors.black,
      ),
      title: Text(
        text,
        // style: TextStyle(color: Colors.black),
      ),
      trailing: Icon(
        trailingIcon,
        // color: Colors.black,
      ),
      onTap: onPressed,
    );

    //  InkWell(
    //   onTap: onPressed,
    //   child: Container(
    //     width: double.infinity,
    //     // child: ElevatedButton(
    //     padding: EdgeInsets.all(15.0),
    //     // onPressed: () {},
    //     child: Text(
    //       text,
    //       style: TextStyle(
    //         color: AppTheme.primaryButtonText,
    //         fontSize: defaultFontSize,
    //         fontFamily: defaultFontFamily,
    //       ),
    //       textAlign: TextAlign.center,
    //     ),
    //     decoration: BoxDecoration(
    //         // shape: BoxShape.circle,
    //         borderRadius: BorderRadius.circular(10),
    //         color: AppTheme.primaryButtonBackground// ?? AppColors.accent, // Color(0xFFF2F3F7)
    //         ),
    //   ),
    // );
  }
}
