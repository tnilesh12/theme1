// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

// // import '../shopify_graphql/models/models.dart';

// class Session {
//   static Future<String> getUserId() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? storeUserDetails = prefs.getString("UserId");
//     return (storeUserDetails ?? "");
//   }

//   static Future<bool> setUserId(String s) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs!.setString("UserId", s);
//   }

//   Future<bool> setStore(Shop shop) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String s = jsonEncode(shop.toJson());
//     return prefs!.setString("store", s);
//   }

//   Future<Shop> getStore() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? encodedMap = prefs.getString("store");
//     print("object  $encodedMap  ${prefs.getString("store")} ");
//     Map<String, dynamic> decodedMap = json.decode(encodedMap!);
//     print("object  ${decodedMap}  ${prefs.getString("store")} ");
//     var shop = Shop.fromJson(decodedMap);
//     return (shop);
//   }

//   static Future<String> getUsername() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? storeUserDetails = prefs.getString("Username");
//     return (storeUserDetails ?? "");
//   }

//   static Future<bool> setUsername(String s) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs!.setString("Username", s);
//   }

//   static Future<bool> IsLogin() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getBool("IsLogin") ?? false;
//   }

//   static Future<bool> setIsLogin(bool s) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs!.setBool("IsLogin", s);
//   }

//   static Future<ShopifyUser> getLoginData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? encodedMap = prefs!.getString('logindata');
//     Map<String, dynamic> decodedMap = json.decode(encodedMap!);
//     var login = ShopifyUser.fromJson(decodedMap);

//     return (login);
//   }

//   static Future<bool> setLoginData(ShopifyUser? s) async {
//     String encodedMap="";
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     if(s!=null){
//      encodedMap = json.encode(s!.toJson());
//     }
    
//     print(encodedMap);
//     setIsLogin(true);
//     return prefs.setString("logindata", encodedMap);
//   }


//   static Future<String> getCachedLanguage() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     final code = prefs.getString("lang");
//     if (code != null) {
//       return code;
//     } else {
//       return 'hi';
//     }
//   }

//   static Future<void> cacheLanguage(String code) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString("lang", code);
//   }




//   static Future<String> getAccessToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString("token").toString();
//   }

//   static Future<bool> setAccessToken(String s) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs!.setString("token", s);
//   }

// }
