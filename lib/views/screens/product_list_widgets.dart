import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
// import 'package:thesatanictemple/database/databases.dart';
// import 'package:thesatanictemple/database/favorite.dart';
import 'package:theme1/views/favorite/favorite_view.dart';
// import '../../theme/app_colors.dart';
// import '../../route/route_generate.dart';
// import '../../shopify_graphql/models/src/product/product.dart';
// import 'package:/theme1/app_assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:theme1/views/product_details_screen/product_details_screen.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';
// import '../../theme/app_theme.dart';

class ProductListWidgets extends StatefulWidget {
  // List<Product> list;
  BuildContext context;
  
  var list = [
    {
      "id" : "1",
      // "index" : "1",
      "images" : "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "formattedPrice" : "33",
      "title" : "Testing1"
    },
    {
      "id" : "2",
      // "index" : "",
      "images" : "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "formattedPrice" : "43",
      "title" : "Testing2"
    },
    {
      "id" : "3",
      // "index" : "3",
      "images" : "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "formattedPrice" : "53",
      "title" : "Testing3"
    },
  ];


  ProductListWidgets(this.context);//, this.list);

  @override
  State<ProductListWidgets> createState() => _ProductListWidgetsState();
}

class _ProductListWidgetsState extends State<ProductListWidgets> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(12, 10, 12, 0),
        height: 195,
        child: Row(
          children: [
            Expanded(
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          InkWell(
                            onTap: () {
                          context.go("/${RouteGenerate.productDetailsScreen}");
                              // Navigator.of(context).pushNamed(
                              //     RouteGenerate.productDetailsScreen,
                              //     arguments: {widget.list![index]["id"]//.id
                              //     });
                            },
                            child: Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                      width: 0.5, color: Colors.black //lightBorder
                                      )),
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Column(
                                      mainAxisAlignment:MainAxisAlignment.start,
                                      children: [
                                        WidgetImage(widget.list[index]["images"]!),
                                        // Container(
                                        //     margin: EdgeInsets.all(2),
                                        //     height: 100,
                                        //     child: CachedNetworkImage(
                                        //         imageUrl: widget.list[index]["images"]!,
                                        //             // .images![0].originalSrc
                                        //             // .toString(),
                                        //         placeholder: (context, url) =>
                                        //             Image.asset(
                                        //               "assets/images/placeholder-image.jpg",
                                        //                 // AppAssets.placeholder,
                                        //                 fit: BoxFit.cover),
                                        //         errorWidget: (context, url,
                                        //                 error) =>
                                        //             Image.asset(
                                        //               "assets/images/placeholder-image.jpg",
                                        //                 // AppAssets.placeholder,
                                        //                 fit: BoxFit.cover),
                                        //         fit: BoxFit.cover)),

                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.fromLTRB(6, 5, 6, 5),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    widget.list[index]["title"]!,//.title.toString(),
                                                    maxLines: 2,
                                                    
      style: CustomTextTheme.getTextStyle(MyTextStyle.ProductListViewCardTitle, context),
                                                    // style: Theme.of(context)
                                                    //     .textTheme
                                                    //     .bodyMedium!
                                                    //     .copyWith(
                                                    //         color: Colors.black,fontFamily: 'Cinzel')
                                                            ),
                                              ),
                                            
                                          Container(
                                            padding:
                                                EdgeInsets.fromLTRB(6, 0, 6, 0),
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                widget.list[index]["formattedPrice"]!,//.formattedPrice,
                                                
      style: CustomTextTheme.getTextStyle(MyTextStyle.ProductListViewCardPrice, context),
                                                // style: Theme.of(context)
                                                //     .textTheme
                                                //     .bodySmall!
                                                //     .copyWith(
                                                //         color: Colors.black,fontFamily: 'Cinzel')
                                                        ),
                                          ),
                                           ],
                                          ),
                                        ),
                                      ])),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: FavoriteView(widget.list[index]["id"]!//.id!
                              , 18, (productId){

                              })),
                        ],
                      );
                    }))
          ],
        ));
  }
}
