// import 'package:dio/dio.dart';
// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
// import '../../../repository/ApiRepository.dart';
import '../../../route/route_generate.dart';
import '../../../theme/app_assets.dart';
// import '../../../theme/app_colors.dart';
// import '../../../utils/FBRemoteConfigConstent.dart';
// import '../../../utils/session.dart';
// import '../../../views/splash_screen/bloc/splash_screen_bloc.dart';
// import '../../theme/app_theme.dart';
// import '../widgets/login_background.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool anim = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      context.push("/${RouteGenerate.introScreen}");
    });
    // () => context.go("/${RouteGenerate.introScreen}"));
  }

  @override
  Widget build(BuildContext context) {
    // context.read<SplashScreenBloc>().LoadData();

    return Scaffold(
        // backgroundColor: AppTheme.primaryColor,
        body:
            // BlocConsumer<SplashScreenBloc, SplashScreenState>(
            //   listener: (context, state) {
            //     if (state is SplashScreenStopAnimation) {

            //           Navigator.of(context)
            //               .pushNamedAndRemoveUntil(RouteGenerate.homeScreen, (b) {
            //             return false;
            //           });
            //     } else if (state is SplashScreenStartAnimation) {
            //       anim = state.anim;
            //     }

            //   },
            //   builder: (context, state) {
            //     return
            Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 207, 243, 50),
            Color.fromARGB(255, 233, 244, 185),
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        )),
        child: Padding(
            padding: EdgeInsets.all(50),
            child: const Image(
                image: AssetImage(AppAssets.logoImg), fit: BoxFit.fitWidth)),
      ),
    )
        //   },
        // )
        );
  }
}
