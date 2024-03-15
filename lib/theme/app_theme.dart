import 'package:flutter/material.dart';
import 'package:theme1/helper/util.dart';
// import '../theme/app_colors.dart';
import '../theme/app_text_theme.dart';

class AppTheme {
  // AppTheme._();
  late dynamic? colorsData;

  static Color? priceTagColor = Colors.red;

  AppTheme(this.colorsData) {
    // primaryColor = Util.getColorFromHex(colorsData!["StyleData"]["General"]["AppBar_Color"]); //Color(0xFF151515);

    typographySize = colorsData!["StyleData"]["TypographySize"];
    headingFont = colorsData!["StyleData"]["HeadingFont"];
    bodyFont = colorsData!["StyleData"]["BodyFont"];

//general
    primaryColor = Util.getColorFromHex(
        colorsData!["StyleData"]["General"]["AppBar_Color"]);
    appBarTextColor = Util.getColorFromHex(
        colorsData!["StyleData"]["General"]["AppBar_Text_Color"]);
    primaryLightTextColor =
        Util.getColorFromHex(colorsData!["StyleData"]["General"]["Text_color"]);
    primaryLightBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["General"]["Background_Color"]);
    successColor = Util.getColorFromHex(
        colorsData!["StyleData"]["General"]["Success_Color"]);
    errorColor = Util.getColorFromHex(
        colorsData!["StyleData"]["General"]["Error_Color"]);
    borderColor = Util.getColorFromHex(
        colorsData!["StyleData"]["General"]["Border_Color"]);

         primaryDarkBackgroundColor = darken(primaryLightBackgroundColor!, 90);
          primaryDarkTextColor = lighten(primaryLightTextColor!, 50);

// Side_Navigation
    drawerSelectedTextColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Side_Navigation"]["Selected_Text_Color"]);
    drawerUnSelectedTextColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Side_Navigation"]["UnSelected_Text_Color"]);
    drawerSelectedBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Side_Navigation"]
            ["Selected_Background_Color"]);
    drawerUnSelectedBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Side_Navigation"]
            ["UnSelected_Background_Color"]);
    drawerMenuBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Side_Navigation"]["Menu_Background_color"]);

// Bottom_Navigation
    bottomNavigationSelectedTextColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Bottom_Navigation"]["Selected_Text_Color"]);
    bottomNavigationUnSelectedTextColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Bottom_Navigation"]["UnSelected_Text_Color"]);
    bottomNavigationSelectedBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Bottom_Navigation"]
            ["Selected_Background_Color"]);
    bottomNavigationUnSelectedBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Bottom_Navigation"]
            ["UnSelected_Background_Color"]);
    bottomNavBackgroundColor = Util.getColorFromHex(colorsData!["StyleData"]
        ["Bottom_Navigation"]["Bottom_Nav_Background_Color"]);

// Primary_Button
    primaryButtonBackground = Util.getColorFromHex(
        colorsData!["StyleData"]["Primary_Button"]["Background"]);
    primaryButtonText = Util.getColorFromHex(
        colorsData!["StyleData"]["Primary_Button"]["Text"]);

// Secondary_Button
    secondaryButtonBackground = Util.getColorFromHex(
        colorsData!["StyleData"]["Secondary_Button"]["Background"]);
    secondaryButtonText = Util.getColorFromHex(
        colorsData!["StyleData"]["Secondary_Button"]["Text"]);

// Edit_Text
    editTextBackgroundColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Edit_Text"]["Background"]);
    editTextPlaceholderColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Edit_Text"]["Placeholder_color"]);
    editTextControllerTextColor = Util.getColorFromHex(
        colorsData!["StyleData"]["Edit_Text"]["Controller_Text_color"]);
  }

  static String? typographySize;
  static String? headingFont;
  static String? bodyFont;


  static Color darken(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
        (c.blue * f).round());
  }

  /// Lighten a color by [percent] amount (100 = white)
// ........................................................
  static Color lighten(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var p = percent / 100;
    return Color.fromARGB(
        c.alpha,
        c.red + ((255 - c.red) * p).round(),
        c.green + ((255 - c.green) * p).round(),
        c.blue + ((255 - c.blue) * p).round());
  }
  static Color? primaryDarkTextColor;// = lighten(primaryLightTextColor!, 50);
  static Color? primaryDarkBackgroundColor;// = darken(primaryLightBackgroundColor!, 90);
  
//general
  static Color? primaryColor;
  static Color? appBarTextColor;
  static Color? primaryLightTextColor;
  static Color? primaryLightBackgroundColor;
  static Color? successColor;
  static Color? errorColor;
  static Color? borderColor;

// Side_Navigation
  static Color? drawerSelectedTextColor;
  static Color? drawerUnSelectedTextColor;
  static Color? drawerSelectedBackgroundColor;
  static Color? drawerUnSelectedBackgroundColor;
  static Color? drawerMenuBackgroundColor;

// Bottom_Navigation
  static Color? bottomNavigationSelectedTextColor;
  static Color? bottomNavigationUnSelectedTextColor;
  static Color? bottomNavigationSelectedBackgroundColor;
  static Color? bottomNavigationUnSelectedBackgroundColor;
  static Color? bottomNavBackgroundColor;

// Primary_Button
  static Color? primaryButtonBackground;
  static Color? primaryButtonText;

// Secondary_Button
  static Color? secondaryButtonBackground;
  static Color? secondaryButtonText;

// Edit_Text
  static Color? editTextBackgroundColor;
  static Color? editTextPlaceholderColor;
  static Color? editTextControllerTextColor;

  static Color black = Colors.black;
  static Color? white = Colors.white;

//   static const Color Border_Color = Color(0xFF4DADA9);
//   static const Color menubackColor = Color(0xFF4B4B4B); ///// primary colour
//   static const Color menuTextColor = Color(0xFFFDFDFD); //// white colour
//   // static const Color menuTextTitleColor = Color(0xFFCECECE);
// //   static const Color buttonbackColor= Color(0XFF15969A);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    listTileTheme: ListTileThemeData(
      titleTextStyle: TextStyle(fontFamily: AppTheme.headingFont),
      tileColor: AppTheme.primaryLightBackgroundColor,
      textColor: AppTheme.primaryLightTextColor,
      iconColor: AppTheme.primaryLightTextColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppTheme.primaryColor, //primaryLightAppBarColor
      titleTextStyle: TextStyle(fontSize: 16, color: AppTheme.appBarTextColor, fontFamily: AppTheme.headingFont),
      iconTheme: IconThemeData(
        color: AppTheme.appBarTextColor, //change your color here
      ),
      toolbarTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(AppTheme.primaryLightTextColor),
      // thumbIcon: MaterialStateProperty.all(Icon(Icons.dark_mode_outlined)),
    ),

    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppTheme.primaryLightTextColor)),

    // Radio Button Theme
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppTheme
                .primaryLightTextColor!; // Color when the radio button is selected
          }
          return AppTheme.black!; // Color when the radio button is not selected
        },
      ),
      visualDensity:
          VisualDensity.compact, // Adjusts the spacing of the radio button
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppTheme.primaryButtonBackground,
      elevation: 8.0,
      splashColor: AppTheme.black, // Color when the button is tapped
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(fontFamily: AppTheme.bodyFont)),
        foregroundColor: MaterialStateColor.resolveWith(
          (Set<MaterialState> states) {
            return AppTheme.appBarTextColor!; // Text color of the text button
          },
        ),
        overlayColor: MaterialStateColor.resolveWith(
          (Set<MaterialState> states) {
            return AppTheme.white!; // Color when the button is tapped
          },
        ),
      ),
    ),

    // Form Theme
    inputDecorationTheme: InputDecorationTheme(
      helperStyle: TextStyle(color: Colors.amber, fontFamily: AppTheme.bodyFont),
      errorStyle: TextStyle(color: Colors.red, fontFamily: AppTheme.bodyFont),
      labelStyle: TextStyle(color: AppTheme.editTextPlaceholderColor, fontFamily: AppTheme.bodyFont),
      iconColor: AppTheme.editTextControllerTextColor,
      fillColor: AppTheme.editTextBackgroundColor,
      hintStyle: TextStyle(color: AppTheme.editTextControllerTextColor, fontFamily: AppTheme.bodyFont),
      prefixIconColor: AppTheme.editTextControllerTextColor,
      suffixIconColor: AppTheme.editTextControllerTextColor,

      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(20),
      //   borderSide:
      //       BorderSide(style: BorderStyle.solid, color: AppTheme.borderColor!),
      // ),

      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(20),
      //   borderSide:
      //       BorderSide(style: BorderStyle.solid, color: AppTheme.borderColor!),
      // ), // Style of the form field border

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            style: BorderStyle.solid,
            color: AppTheme.borderColor!), // Border color when focused
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: AppTheme.errorColor!), // Border color when in error state
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: AppTheme.errorColor!,
            width: 2.0), // Border color when in error state and focused
      ),
    ),

    // Card Theme
    cardTheme: CardTheme(
      color: AppTheme.primaryLightBackgroundColor, // Background color of the card
      elevation: 5.0, // Elevation of the card
      margin: EdgeInsets.all(16.0), // Margin around the card
    ),

    // Dialog Theme
    dialogTheme: DialogTheme(
        titleTextStyle: TextStyle(fontFamily: AppTheme.bodyFont),
      backgroundColor: AppTheme
          .primaryLightBackgroundColor, // Background color of the dialog
      elevation: 10.0, // Elevation of the dialog
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(16.0), // Border radius of the dialog
      ),
    ),

    // Icon Theme
    iconTheme: IconThemeData(
      color: AppTheme.primaryLightTextColor, // Default color of icons
      size: 24.0, // Size of icons
    ),

    // Button Theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppTheme
          .primaryButtonBackground, // Background color of regular buttons
      textTheme: ButtonTextTheme.primary, // Style of text on the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Border radius of the button
      ),
    ),

    // Divider Theme
    dividerTheme: DividerThemeData(
      color: AppTheme.primaryLightTextColor!.withAlpha(50), // Color of dividers
      thickness: 1.0, // Thickness of dividers
      space: 16.0, // Vertical space between dividers
    ),

    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //       backgroundColor : MaterialStateProperty.all(AppTheme.primaryButtonBackground),
    //       foregroundColor:   MaterialStateProperty.all(AppTheme.primaryButtonText),
    //   )
    // ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: ButtonStyle(
    //       backgroundColor : MaterialStateProperty.all(AppTheme.primaryButtonBackground),
    //       foregroundColor:   MaterialStateProperty.all(AppTheme.primaryButtonText),
    //   ),
    // ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(fontFamily: AppTheme.bodyFont),
      unselectedLabelStyle: TextStyle(fontFamily: AppTheme.bodyFont),
      backgroundColor: AppTheme.bottomNavBackgroundColor,
      selectedItemColor: AppTheme.bottomNavigationSelectedTextColor,
      unselectedItemColor: AppTheme.bottomNavigationUnSelectedTextColor,
      // selected and unselected backgound color
    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: AppTheme.drawerMenuBackgroundColor,
    ),

    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTheme,

    colorScheme: ColorScheme(
      background: AppTheme.primaryLightBackgroundColor!,
      brightness: Brightness.light,
      primary: AppTheme.primaryColor!,
      onPrimary: AppTheme.primaryColor!,
      secondary: AppTheme.primaryColor!,
      onSecondary: AppTheme.primaryColor!,
      error: AppTheme.errorColor!,
      onError: AppTheme.errorColor!,
      onBackground: Colors.white,
      surface: AppTheme.white!,
      onSurface: AppTheme.white!,
    ),
    // buttonTheme: ButtonThemeData(
    //   buttonColor: AppTheme.primaryButtonBackground, // Primary button color
    //   textTheme: ButtonTextTheme.primary, // Text color of primary buttons
    //   secondaryButtonColor: secondaryColor, // Uncomment if you want to set secondary button color
    //   textTheme: ButtonTextTheme.secondary, // Uncomment if you want to set text color of secondary buttons
    // ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,

    listTileTheme: ListTileThemeData(
      tileColor: AppTheme.primaryDarkBackgroundColor,
      textColor: AppTheme.primaryDarkTextColor,
      iconColor: AppTheme.primaryDarkTextColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppTheme.primaryColor, //primaryDarkAppBarColor
      titleTextStyle: TextStyle(fontSize: 16, color: AppTheme.appBarTextColor),
      iconTheme: IconThemeData(
        color: AppTheme.appBarTextColor, //change your color here
      ),
      toolbarTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(AppTheme.primaryDarkTextColor),
      // thumbIcon: MaterialStateProperty.all(Icon(Icons.dark_mode_outlined)),
    ),

    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppTheme.primaryDarkTextColor)),

    // Radio Button Theme
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppTheme
                .primaryColor!; // Color when the radio button is selected
          }
          return AppTheme.black!; // Color when the radio button is not selected
        },
      ),
      visualDensity:
          VisualDensity.compact, // Adjusts the spacing of the radio button
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppTheme.primaryColor,
      elevation: 8.0,
      splashColor: AppTheme.black, // Color when the button is tapped
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateColor.resolveWith(
          (Set<MaterialState> states) {
            return AppTheme.appBarTextColor!; // Text color of the text button
          },
        ),
        overlayColor: MaterialStateColor.resolveWith(
          (Set<MaterialState> states) {
            return AppTheme.white!; // Color when the button is tapped
          },
        ),
      ),
    ),

    // Form Theme
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: AppTheme.editTextPlaceholderColor),
      iconColor: AppTheme.editTextControllerTextColor,
      fillColor: AppTheme.editTextBackgroundColor,
      hintStyle: TextStyle(color: AppTheme.editTextControllerTextColor),
      prefixIconColor: AppTheme.editTextControllerTextColor,
      suffixIconColor: AppTheme.editTextControllerTextColor,


      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(20),
      //   borderSide:
      //       BorderSide(style: BorderStyle.solid, color: AppTheme.borderColor!),
      // ),

      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(20),
      //   borderSide:
      //       BorderSide(style: BorderStyle.solid, color: AppTheme.borderColor!),
      // ), // Style of the form field border

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            style: BorderStyle.solid,
            color: AppTheme.borderColor!), // Border color when focused
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: AppTheme.errorColor!), // Border color when in error state
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: AppTheme.errorColor!,
            width: 2.0), // Border color when in error state and focused
      ),
    ),

    // Card Theme
    cardTheme: CardTheme(
      
        color:
            AppTheme.primaryDarkBackgroundColor, // Background color of the card
      elevation: 5.0, // Elevation of the card
      margin: EdgeInsets.all(16.0), // Margin around the card
    ),

    // Dialog Theme
    dialogTheme: DialogTheme(
      backgroundColor: AppTheme
          .primaryDarkBackgroundColor, // Background color of the dialog
      elevation: 10.0, // Elevation of the dialog
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(16.0), // Border radius of the dialog
      ),
    ),

    // Icon Theme
    iconTheme: IconThemeData(
      color: AppTheme.primaryDarkTextColor, // Default color of icons
      size: 24.0, // Size of icons
    ),

    // Button Theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppTheme
          .primaryButtonBackground, // Background color of regular buttons
      textTheme: ButtonTextTheme.primary, // Style of text on the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Border radius of the button
      ),
    ),

    // Divider Theme
    dividerTheme: DividerThemeData(
      color: AppTheme.primaryDarkTextColor!.withAlpha(50), // Color of dividers
      thickness: 1.0, // Thickness of dividers
      space: 16.0, // Vertical space between dividers
    ),

    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //       backgroundColor : MaterialStateProperty.all(AppTheme.primaryButtonBackground),
    //       foregroundColor:   MaterialStateProperty.all(AppTheme.primaryButtonText),
    //   )
    // ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: ButtonStyle(
    //       backgroundColor : MaterialStateProperty.all(AppTheme.primaryButtonBackground),
    //       foregroundColor:   MaterialStateProperty.all(AppTheme.primaryButtonText),
    //   ),
    // ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppTheme.bottomNavBackgroundColor,
      selectedItemColor: AppTheme.bottomNavigationSelectedTextColor,
      unselectedItemColor: AppTheme.bottomNavigationUnSelectedTextColor,
      // selected and unselected backgound color
    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: AppTheme.drawerMenuBackgroundColor,
    ),

    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTheme,

    colorScheme: ColorScheme(
      background: AppTheme.primaryDarkBackgroundColor!,
      brightness: Brightness.dark,
      primary: AppTheme.primaryColor!,
      onPrimary: AppTheme.primaryColor!,
      secondary: AppTheme.primaryColor!,
      onSecondary: AppTheme.primaryColor!,
      error: AppTheme.errorColor!,
      onError: AppTheme.errorColor!,
      onBackground: Colors.white,
      surface: AppTheme.white!,
      onSurface: AppTheme.white!,
    ),
    // buttonTheme: ButtonThemeData(
    //   buttonColor: AppTheme.primaryButtonBackground, // Primary button color
    //   textTheme: ButtonTextTheme.primary, // Text color of primary buttons
    //   secondaryButtonColor: secondaryColor, // Uncomment if you want to set secondary button color
    //   textTheme: ButtonTextTheme.secondary, // Uncomment if you want to set text color of secondary buttons
    // ),
  );
}
