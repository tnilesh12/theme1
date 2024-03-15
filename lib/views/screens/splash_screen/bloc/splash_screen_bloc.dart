// import 'dart:async';
// import 'dart:convert';

// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/cupertino.dart';
// import '../../../globels.dart' as globals;
// import '../../../repository/ApiRepository.dart';
// import '../../../shopify_graphql/models/models.dart';
// import '../../../shopify_graphql/models/src/country/CountryListData.dart';
// import '../../../shopify_graphql/shopify/shopify.dart';
// import '../../../utils/session.dart';

// part 'splash_screen_event.dart';

// part 'splash_screen_state.dart';

// class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
//   SplashScreenBloc() : super(SplashScreenInitial()) {
//     on<SplashScreenEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }

//   void LoadData() async {
//     try{
//     if (await globals.postRepository.isConnected()) {
//       String handle = 'about-us';
//       Shop shop = await ShopifyStore.instance.getShop();
//       globals.shop = shop;
//       Session s = Session();
//       bool b = await s.setStore(shop);
//       emit(SplashScreenStopAnimation());
//     }
//     }catch(e){}
//   }
// }
