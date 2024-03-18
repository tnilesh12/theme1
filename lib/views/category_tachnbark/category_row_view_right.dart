import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryRowViewRight extends StatelessWidget {
  // final Menus menus;
  final menus;
  final int mainIndex;

  CategoryRowViewRight(
      {super.key, required this.menus, required this.mainIndex});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // scrollDirection: Axis.vertical,
        itemCount: menus.length, // menus.items![mainIndex].items!.length,
        itemBuilder: (context, index) {
          // print(menus.items![mainIndex].items![index].resourceId );
          // print(menus.items![mainIndex].resourceId);
          // print(menus.items![mainIndex].items![index].title );
          // print(menus.items![mainIndex].title);
          return
              // menus.items![mainIndex].items![index].resourceId !=  null    ?
              /*      Column(children: [
                  InkWell(
                    onTap: () {

                        // Navigator.pushNamed(context,
                        //     RouteGenerate.productListScreen, arguments: {
                        //   menus.items![mainIndex].items![index].resourceId,
                        //       menus.items![mainIndex].items![index].title
                        // });

                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,// color: AppColor.whiteLight
                                    )),
                            alignment: Alignment.center,
                            child: Text(menus[index]["title"],
                              // menus.items![mainIndex].items![index].title
                              //     .toString(),
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 16,
                                  // color: AppColor.black
                                  ),
                              softWrap: true,
                            ),
                          )
                        ]),
                  )
                ]);
        */

              // /*    :
              Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      // color: AppColor.baseColor,
                      border:
                          Border.all(width: 1 //, color: AppColor.highlightColor
                              )),
                  // padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: InkResponse(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 7, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            menus[index]['title'],
                              // menus.items![mainIndex].items![index].title
                              //     .toString(),
                              style: const TextStyle(
                                  // color: AppColor.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ],
                    ),
                    onTap: () {},
                  )),
              Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      // physics:
                      //     NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        //  childAspectRatio: 1,
                        mainAxisSpacing: 20, // spacing between rows
                        crossAxisSpacing: 20, // spacing between columns
                        mainAxisExtent: 70,
                      ),
                      padding: EdgeInsets.only(right: 20, left: 20.0),
                      // padding around the grid
                      itemCount: menus
                          .length, // menus.items![mainIndex].items![index].items!.length,
                      // total number of items
                      itemBuilder: (context, state1) {
                        return InkWell(
                          onTap: () {
                            // if (menus.items![mainIndex].items![index]
                            //     .items![state1].resourceId!.isNotEmpty) {
                            //   Navigator.pushNamed(context,
                            //       RouteGenerate.productListScreen,
                            //       arguments: {
                            //         menus.items![mainIndex].items![index]
                            //             .items![state1].resourceId,
                            //         menus.items![mainIndex].items![index]
                            //             .items![state1].title

                            //       });
                            // }
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    width: 1,
                                    // color: AppColor.whiteLight
                                  )),
                                  alignment: Alignment.center,
                                  child: Text(
                                    menus[index]['title'],
                                    // menus.items![mainIndex].items![index]
                                    //     .items![state1].title
                                    //     .toString(),
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 16,
                                      // color: AppColor.black
                                    ),
                                    softWrap: true,
                                  ),
                                )
                              ]),
                        );
                      }))
            ],
          );

          // */
        });
  }
}
