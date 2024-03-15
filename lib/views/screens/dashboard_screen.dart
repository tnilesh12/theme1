import 'dart:convert';
// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme1/modelClass/app_theme_model.dart';
import 'package:theme1/test/test2.dart';
import 'package:theme1/test/test_product_details.dart';
import 'package:theme1/views/cart_screen/cart_screen.dart';
import 'package:theme1/views/category/category_screen.dart';
import 'package:theme1/views/product_list/product_list_screen.dart';
import 'package:theme1/views/screens/product_list_widgets.dart';
import 'package:theme1/views/profile_screen/profile_screen.dart';
import 'package:theme1/views/widgets/bottom_navigation/bottom_bar1.dart';
import 'package:theme1/views/widgets/custome_page_from_json.dart';
import 'package:theme1/views/widgets/drawer/drawer1.dart';

/*

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  String condition = "both";

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   FetchData.getDataFromApi().then((value) {
  //     // data = value;
  //     // setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    AppThemeModel appThemeModel = AppThemeModel.fromJson(data);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Util.getColorFromHex(
                appThemeModel.appThemeBlockData!.appBackgroundColor!),
            title: Text(
              appThemeModel.appThemeBlockData!.appBarTitle!,
              style: TextStyle(
                  color: Util.getColorFromHex(
                      appThemeModel.appThemeBlockData!.primaryTextColor!)),
            ),
            iconTheme: IconThemeData(
                color: Util.getColorFromHex(
                    appThemeModel.appThemeBlockData!.primaryTextColor!)),
          ),
          drawer: condition == "left" || condition == "both"
              ? Drawer5(appThemeModel.appThemeBlockData!,
                  onTabChange: (tabItem) {
                  print("tabItem$tabItem");
                })
              : null,
          bottomNavigationBar: condition == "bottom" || condition == "both"
              ? //BottomBar(bottomBarModel.bottomBarBlockData!, (selectedIndex) {})
              BottomBar4(appThemeModel.appThemeBlockData!.bottomBarBlockData!,
                  onTabChange: (tabItem) {
                  print("tabItem$tabItem");
                })
              : null,
          body: HomePageScreenBody(appThemeModel: appThemeModel)),
    );
  }
}


*/

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String condition = "both";
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedIndex1 = -1, subSelectedIndex1 = -1, nestedSelectedIndex1 = -1;
  String selectedBottonNav = "/home_screen"; //bottomNavItems.first;

  void updateSelectedBtmNav(String tabItem) {
    if (selectedBottonNav != tabItem) {
      // if (tabItem.linksTo == "/product_list_screen") {
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListScreenBody()));
      // }
      // else  if (tabItem.linksTo == "/cart_screen") {
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>CartBody()));
      // }
      setState(() {
        selectedBottonNav = tabItem;

        // if (tabItem == "/product_list_screen") {
        //   ProductListScreenBody();
        // } else if (tabItem == "/cart_screen") {
        //   CartBody();
        // }
      });
    }
  }

  // late AnimationController _animationController;
  // // late Animation<double> scalAnimation;
  // late Animation<double> animation;
  // late BottomBarItems selectedBottonNav;
  // void updateSelectedBtmNav(BottomBarItems menu) {
  //   if (selectedBottonNav != menu) {
  //     setState(() {
  //       selectedBottonNav = menu;
  //       print("setState bottom nav item pressed $menu");
  //     });
  //   }
  // }
  // @override
  // void initState() {
  //   _animationController = AnimationController(
  //       vsync: this, duration: const Duration(milliseconds: 200))
  //     ..addListener(
  //       () {
  //         setState(() {});
  //       },
  //     );
  //   animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
  //       parent: _animationController, curve: Curves.fastOutSlowIn));
  //   super.initState();
  // }

  Future<Map<String, String>> loadJson() async {
    final jsonDrawer =
        await rootBundle.loadString("assets/inUseJson/MenuData.json");
    final jsonBottomBar =
        await rootBundle.loadString("assets/inUseJson/NavData.json");

    return {
      'jsonDrawer': jsonDrawer,
      'jsonBottomBar': jsonBottomBar,
    };
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            loadJson(), // rootBundle.loadString("assets/json/MenuData.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var listDrawer =
                json.decode(snapshot.data!['jsonDrawer'].toString());
            var listBottomBar =
                json.decode(snapshot.data!['jsonBottomBar'].toString());

            print('------------------------------$snapshot');
            // var list = json.decode(snapshot.data.toString()!);
            // BottomBarModel bottomBarModel = BottomBarModel.fromJson(list);
            // selectedBottonNav = bottomBarModel.bottomBarBlockData!.bottomBarItems!.first;

            // AppThemeModel appThemeModel = AppThemeModel.fromJson(listBottomBar);

            print("----------------------------------${listDrawer}");
            print("----------------------------------${listBottomBar}");
            // print("my list is nnnnnnnnnnnnnnnnnnnn ${myList}");

            // return MainDrawer(appThemeModel.appThemeBlockData!,onTabChange: (tabItem) {print("tabItem$tabItem");});

            return SafeArea(
                child: Scaffold(
              key: _scaffoldKey,
              appBar: AppBar(
                // automaticallyImplyLeading: false,
                title: Text(
                  "It Geeks",
                ),
              ),
              drawer: condition == "left" || condition == "both"
                  // ? Drawer1(appThemeModel.appThemeBlockData!,onTabChange: (tabItem) {print("tabItem$tabItem");})
                  ? Drawer1(_scaffoldKey, selectedIndex1, subSelectedIndex1,
                      nestedSelectedIndex1, listDrawer!, onTabChange: (tabItem,
                          selectedIndex,
                          subSelectedIndex,
                          nestedSelectedIndex) {
                      print("tabItem$tabItem");
                      setState(() {
                        selectedIndex1 = selectedIndex;
                        subSelectedIndex1 = subSelectedIndex;
                        nestedSelectedIndex1 = nestedSelectedIndex;
                      });
                    })
                  : null,
              bottomNavigationBar: condition == "bottom" || condition == "both"
                  ? //BottomBar(bottomBarModel.bottomBarBlockData!, (selectedIndex) {})
                  BottomBar1(listBottomBar,
                      // appThemeModel.appThemeBlockData!.bottomBarBlockData!,
                      onTabChange: (tabItem) {
                      print("tabItem$tabItem");

                      updateSelectedBtmNav(tabItem!["Action"]!);
                    })
                  : null,
              body: Container(
                  child: selectedBottonNav == "/product_list_screen"
                      ? ProductListScreenBody()
                      : selectedBottonNav == "/cart_screen"
                          ? CartBody()
                          : selectedBottonNav == "/home_screen"
                              ? HomePageScreenBody()
                              : selectedBottonNav == "/more_screen"
                                  ? Container(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: Column(
                                        children: [
                                          ProductListWidgets(context),
                                          Divider(
                                            height: 2,
                                          )
                                          //  CategoryScreen()// WishListBody()
                                        ],
                                      ),
                                    )
                                  : ProfileScreenBody(
                                      isOpenedFromBottomBar: true,
                                    ) // CourseInfoScreen()
                  // HomePageScreenBody(appThemeModel: appThemeModel))
                  ),
            ));
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
        });
  }
}

class HomePageScreenBody extends StatelessWidget {
  // AppThemeModel? appThemeModel;
  HomePageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CustomePageFromJson().GetWidget(context),
        ],
      ),
    );
  }
}
