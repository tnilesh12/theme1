import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme1/views/category_tachnbark/category_row_view.dart';
import 'package:theme1/views/category_tachnbark/category_row_view_right.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class CategoryL {
  String title = "";

  CategoryL(this.title);
}

class _CategoryScreenState extends State {
  // List<Menus> menus = [];

  var menuuu = [
    {
      "id" : "1",
      "title" : "title1",
      "itemsCount" : "itemsCount",
      "handle" : "handle",
      "tags" : "tags",
      "resourceId" : "resourceId",
      "resource" : "resource",
      "items" : "items",
    },
    {
      "id" : "2",
      "title" : "title2",
      "itemsCount" : "itemsCount",
      "handle" : "handle",
      "tags" : "tags",
      "resourceId" : "resourceId",
      "resource" : "resource",
      "items" : "items",
    },
    {
      "id" : "3",
      "title" : "title3",
      "itemsCount" : "itemsCount",
      "handle" : "handle",
      "tags" : "tags",
      "resourceId" : "resourceId",
      "resource" : "resource",
      "items" : "items",
    },
    {
      "id" : "4",
      "title" : "title4",
      "itemsCount" : "itemsCount",
      "handle" : "handle",
      "tags" : "tags",
      "resourceId" : "resourceId",
      "resource" : "resource",
      "items" : "items",
    },
    {
      "id" : "5",
      "title" : "title5",
      "itemsCount" : "itemsCount",
      "handle" : "handle",
      "tags" : "tags",
      "resourceId" : "resourceId",
      "resource" : "resource",
      "items" : "items",
    },
    {
      "id" : "6",
      "title" : "title6",
      "itemsCount" : "itemsCount",
      "handle" : "handle",
      "tags" : "tags",
      "resourceId" : "resourceId",
      "resource" : "resource",
      "items" : "items",
    }
  ];

  // late Menus menus;
  @override
  Widget build(BuildContext context) {
    // context.read<CategoryScreenBloc>().LoadData();

    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                    child: 
                    // BlocListener<CategoryScreenBloc, CategoryScreenState>(
                    //     listener: (context, state) {},
                    //     child:
                    //         BlocBuilder<CategoryScreenBloc, CategoryScreenState>(
                    //             builder: (context, state) {
                    //       if (state is CategoryScreenLoading) {
                    //         return CategoryShimmerEffect()
                    //             .categoryshimmereffect(context);
                    //       } else if (state
                    //           is CategoryScreenNoInternetConnection) {
                    //         return const NoInternetView();
                    //       } else if (state is CategoryScreenLoaded) {
                    //         return
                             Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      // margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              // height: MediaQuery.of(context).size.height,
                                              //Todo Category List
                                              child: Row(children: [
                                                Container(
                                                    child: SizedBox(
                                                        width: 100,
                                                        height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height,
                                                        child: CategoryRowView(
                                                          menus: menuuu,
                                                          // menus: state.menus,
                                                        ))),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 1,
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height,
                                                ),
                                                Container(
                                                    child: SizedBox(
                                                        width:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .width -
                                                                101,
                                                        height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height,
                                                        child:
                                                            CategoryRowViewRight(
                                                              menus: menuuu,
                                                              mainIndex: 1,
                                                                // menus:
                                                                //     state.menus,
                                                                // mainIndex: state
                                                                //     .index
                                                                    ))),
                                              ]),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                                )//;
                        //   } else {
                        //     return const NoDataView();
                        //   }
                        // }))
                        ),
              ],
            ),
          ),
        ));
  }
}
