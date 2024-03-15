import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme1/theme/app_theme.dart';


import 'package:flutter/material.dart';
// import 'package:theme1/localizations/localization_cubit.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:theme1/main.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/theme/theme_cubit.dart';




class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

  List<String> list = <String>['English', 'Hindi', 'French', 'Arabic'];

class _SettingScreenState extends State<SettingScreen> {
   String dropdownValue = list.first;
  

  bool forAndroid = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Features",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.Heading, context)
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Dark Mode",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.SettingDefault, context)
                ),
                Switch(
                  activeColor: AppTheme.white,
                  activeTrackColor: AppTheme.black,
                  inactiveThumbColor: Colors.blueGrey.shade600,
                  inactiveTrackColor: Colors.grey.shade400,
                  splashRadius: 50.0,
                  value: forAndroid,
                  onChanged: (value) => setState(() => forAndroid = value),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 30,
           
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Language",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.SettingDefault, context)
                ),
                DropdownMenu<String>(
                  initialSelection: list.first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(value: value, label: value);
                  }).toList(),
                ),
              
              ],
            ),
          ),
            Divider(),
            SettingScreen2(),
        ],
      ),
    );
  }
}


class SettingScreen2 extends StatelessWidget {

  bool isDarkMode = false;

  bool reviewsEnabled = true;

  String selectedLanguage = "en";

  List<Map<String, String>> languageList = [
    {"val": "en", "title": "English"},
    {"val": "hi", "title": "Hindi"},
    {"val": "es", "title": "Spanish"}
  ];

  @override
  Widget build(BuildContext context) {

    return 
    // Scaffold(
    //     appBar: AppBar(
    //       title: Text("Settings"),
    //     ),
    //     body:
         Container(
          color:Theme.of(context).colorScheme.background,
          // padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SwitchListTile(
                value: isDarkMode,
                onChanged: (value) {
                  isDarkMode = value;
                  context.read<ThemeCubit>().toggleTheme();
                },
              //  thumbIcon: MaterialStateProperty.all(
              //     Util.isDarkMode() ? Icon(Icons.light_mode_outlined,  color: AppTheme.primaryDarkBackgroundColor,) : Icon(Icons.dark_mode_outlined)
              //   ),
                title: Text("Dark Mode",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.SettingDefault, context)),
              ),  
              Divider(
                height: 1,
              ),
             
        
              
            ],
        ));
  }
}
