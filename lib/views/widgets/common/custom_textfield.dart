import 'package:flutter/material.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';

// class Custom TextField extends

class CustomTextFormField {
  final String defaultFontFamily = 'Roboto-Light.ttf';
  final double defaultFontSize = 14;
  final double defaultIconSize = 17;

  Widget SimpleTextFormField(
      {required BuildContext context,
      TextEditingController? controller,
      required String? hintText,
      String? Function(String?)? validator,
      String? initialValue,
      Function(String)? onChanged,
      IconData? prefixIcon,
      IconData? suffixIcon,
      // Color? backgroundColor,
      // Color? textColor,
      bool obscureText = false}) {
    return TextFormField(
      style: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
      // style: AppTextTheme,
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      initialValue: initialValue,
      onChanged: onChanged,
      // keyboardType: (hintText.contains(AppLocalizations.of(context)!.mobil))
      //     ? TextInputType.number
      //     : TextInputType.emailAddress,
      //   style: Theme.of(context)
      // .textTheme
      // .bodyMedium!
      // .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
      showCursor: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        // labelText: labelText,
        filled: true,
        // fillColor: Color(0xFFF2F3F5),
      hintStyle: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
        hintText: hintText,
      ),
    );
  }

  Widget SimpleTextFormFieldWithSuffixIcon(
      {required BuildContext context,
      TextEditingController? controller,
      required String? hintText,
      String? Function(String?)? validator,
      String? initialValue,
      Function(String)? onChanged,
      IconData? suffixIcon,
      bool obscureText = false}) {
    return TextFormField(
      style: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      initialValue: initialValue,
      onChanged: onChanged,
      // keyboardType: (hintText.contains(AppLocalizations.of(context)!.mobil))
      //     ? TextInputType.number
      //     : TextInputType.emailAddress,
      //   style: Theme.of(context)
      // .textTheme
      // .bodyMedium!
      // .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
      showCursor: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        // labelText: labelText,
        filled: true,
        suffixIcon: Icon(
          suffixIcon,
          // color: Color(0xFF666666),
          size: defaultIconSize,
        ),
        // fillColor: Color(0xFFF2F3F5),
      hintStyle: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
        hintText: hintText,
      ),
    );
  }

  Widget SimpleTextFormFieldWithPrefixIcon(
      {required BuildContext context,
      TextEditingController? controller,
      required String? hintText,
      String? Function(String?)? validator,
      String? initialValue,
      Function(String)? onChanged,
      IconData? prefixIcon,
      bool obscureText = false}) {
    return TextFormField(
      style: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      initialValue: initialValue,
      onChanged: onChanged,
      // keyboardType: (hintText.contains(AppLocalizations.of(context)!.mobil))
      //     ? TextInputType.number
      //     : TextInputType.emailAddress,
      //   style: Theme.of(context)
      // .textTheme
      // .bodyMedium!
      // .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
      showCursor: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        // labelText: labelText,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          // color: Color(0xFF666666),
          size: prefixIcon != null ? defaultIconSize : 0,
        ),
        // fillColor: Color(0xFFF2F3F5),
      hintStyle: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
        hintText: hintText,
      ),
    );
  }

  Widget SimpleTextFormFieldWithBothIcon(
      {required BuildContext context,
      TextEditingController? controller,
      required String? hintText,
      String? Function(String?)? validator,
      String? initialValue,
      Function(String)? onChanged,
      IconData? prefixIcon,
      IconData? suffixIcon,
      bool obscureText = false}) {
    return TextFormField(
      style: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      initialValue: initialValue,
      onChanged: onChanged,
      // keyboardType: (hintText.contains(AppLocalizations.of(context)!.mobil))
      //     ? TextInputType.number
      //     : TextInputType.emailAddress,
      //   style: Theme.of(context)
      // .textTheme
      // .bodyMedium!
      // .copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
      showCursor: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        // labelText: labelText,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          // color: Color(0xFF666666),
          size: prefixIcon != null ? defaultIconSize : 0,
        ),
        suffixIcon: Icon(
          suffixIcon,
          // color: Color(0xFF666666),
          size: defaultIconSize,
        ),
        // fillColor: Color(0xFFF2F3F5),
      hintStyle: CustomTextTheme.getTextStyle(MyTextStyle.TextFormFieldInput, context),
        hintText: hintText,
      ),
    );
  }
}

// class PrimaryTextField extends StatelessWidget {
//   final String defaultFontFamily = 'Roboto-Light.ttf';
//   final double defaultFontSize = 14;
//   final double defaultIconSize = 17;
//   final String hintText;
//   final TextEditingController? controller;
//   final bool obscureText;
//   // final String? Function(String?)? validator;
//   final String? initialValue;
//   final Function(String)? onChanged;
//   final IconData? prefixIcon;
//   final IconData? suffixIcon;
//   const PrimaryTextField(
//       {super.key,
//       required this.hintText,
//       this.controller,
//       this.obscureText = false,
//       this.validator,
//       this.initialValue,
//       this.onChanged,
//       this.prefixIcon,
//       this.suffixIcon});
//   @override
//   Widget build(BuildContext context) {
//     return Text("");
//         //  TextFormField(
//         //   controller: controller,
//         //   obscureText: obscureText,
//         //   validator: validator,
//         //   initialValue: initialValue,
//         //   onChanged: onChanged,
//         //   decoration: InputDecoration(
//         //     border: OutlineInputBorder(
//         //       borderRadius: BorderRadius.circular(7)
//         //     ),
//         //     labelText: labelText
//         //   ),
//         // );
//         // TextField(
//   }
// }
