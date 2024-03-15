import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/firebase_options.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:theme1/theme/theme_cubit.dart';

// var styleJson;

void main() async {
  // runApp(const MyApp());//routerConfig: router,));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Load JSON data
  String styleJson = await rootBundle.loadString('assets/inUseJson/style.json');
  Map<String, dynamic> colorsData = json.decode(styleJson);
  print("-----------------$colorsData--------------");
  // Extract colors from JSON data
  AppTheme(colorsData);
  // Color primaryColor = Color(colorsData['primary']);
  // Color secondaryColor = Color(colorsData['secondary']);

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(MyApp()));
}

Future<Map<String, dynamic>> loadStyleData() async {
  // Simulated loading of color data from JSON
  // Replace this with your actual logic to load JSON data
  String jsonString = '{"color": "0xFF00FF00"}';
  return json.decode(jsonString);
}

// /// This handles '/' and '/details'.
//  final goRouter = GoRouter(
//     // final screenWidth = 360.0;
//     // final screenHeight = 640.0;
//    routes: [
//      GoRoute(
//        path: '/',
//        builder: (_, __) {
//         return
//         kIsWeb
//             ? Scaffold(
//                 body: Center(
//                   child: Container(
//                     width: 360.0,
//                     height: 840.0,
//                     child: Navigator(
//                       onGenerateRoute: (settings) {
//                         return MaterialPageRoute(
//                             builder: (context) => SignUpScreen());
//                       },
//                     ),
//                   ),
//                 ),
//               )
//             : SignUpScreen();
//        },
//       //  Scaffold(
//       //    appBar: AppBar(title: const Text('Home Screen')),
//       //  ),
//        routes: [
//          GoRoute(
//            path: 'redirectPage',
//            builder: (_, __) => Scaffold(
//              appBar: AppBar(title: const Text('Redirect Page Screen')),
//            ),
//          ),
//        ],
//      ),
//    ],
//  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MultiBlocProvider(providers: [
      BlocProvider<ThemeCubit>(
        create: (BuildContext context) => ThemeCubit(),
      ),
      // BlocProvider<LocalizationCubit>(
      //   create: (BuildContext context) => LocalizationCubit(),
      // ),
      // BlocProvider<BaseBloc>(create: (context) {
      //   return BaseBloc();
      // }),
    ], child: AppView());

/*
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // textTheme: AppTheme.textTheme,
          platform: TargetPlatform.iOS,
        ),
        routerConfig: goRouter,
        //for drawer 2
        // NavigationHomeScreen()
        );
        */
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(builder: (_, theme) {
      // return BlocBuilder<LocalizationCubit, Locale>(builder: (_, local) {
      return MaterialApp.router(
        routerConfig: RouteGenerate.goRouter,
        // localizationsDelegates: const [
        //   AppLocalizations.delegate, // Add this line
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('es'), // Spanish
          Locale('hi'),
        ],
        // locale: local,
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: RouteGenerate.generateRoute,
        theme: theme,
        // initialRoute: RouteGenerate.splashScreen

        // routeInformationParser: RouteGenerate.returnRouter().routeInformationParser,
        // routerDelegate: RouteGenerate.returnRouter().routerDelegate,
      );
      // });
    });
  }
}
