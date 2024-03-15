import 'dart:collection';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/views/product_details_screen/product_details_screen.dart';
import 'package:theme1/views/screens/product_grid_view.dart';
// import 'package:thesatanictemple/views/widgets/product_grid_view.dart';
// import '../../../globels.dart';
// import '../../../shopify_graphql/models/src/collection/collection.dart';
// import '../../../shopify_graphql/models/src/menus_details/items.dart';
// import '../../../shopify_graphql/models/src/product_filter_class/product_filter.dart';
// import '../../../shopify_graphql/shopify/shopify.dart';
// import '../../../shopify_graphql/shopify/src/product_filter_date.dart';
// import '../../../theme/app_colors.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../views/product_list/Sort_Bottom_ListView.dart';
import '../../../views/product_list/bloc/new_filter_list.dart';
// import '../../route/route_generate.dart';
// import '../../shopify_graphql/enums/src/sort_key_product_collection.dart';
// import '../../shopify_graphql/models/src/product/product.dart';
// import '../../theme/app_assets.dart';
// import '../../theme/app_theme.dart';
import '../checkout/bloc/checkout_screen_bloc.dart';
// import '../shimmer/product_detail_shimmer_view.dart';
// import '../shimmer/search_shimmer_view.dart';
// import '../widgets/header_widget.dart';
// import '../widgets/no_data_view.dart';
// import '../widgets/no_internet_view.dart';
// import '../widgets/search_view.dart';
import 'bloc/product_list_screen_bloc.dart';
// import '../../../globels.dart' as globels;

class ProductListScreen extends StatefulWidget {
  // final String collection_id;
  // final String collection_name;

  ProductListScreen(
    // this.collection_id, this.collection_name,
     {super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

// widget.collection_name.toString()
class _ProductListScreenState extends State<ProductListScreen> {
  int page = 1;
  // FilterBottomList? sorting = FilterBottomList("", false, false, SortKeyProductCollection.BEST_SELLING);
  Map<String, dynamic>? filterarray = Map();
  Widget? appBarTitle;
  bool LoadingData = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    // globels.productFilterOptionValue = ProductFilterData("", [], [], "");
    // SortBottomList = FilterList().SortBottomList;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // your code goes here
      appBarTitle = Text(
        "Collection Name",
        // widget.collection_name,
          style: TextStyle(
                                  fontFamily: 'Cinzel',
                                  fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                                  color: Colors.white
                              ));
    });
    setState(() {});
  }

  // FilterClick() async {
  //   try {
  //     filterarray = Map();
  //     bool filter = await Navigator.pushNamed(
  //         context, RouteGenerate.productFilterScreen,
  //         arguments: {globels.FilterHendle}) as bool;

  //     if (filter) {
  //       for (int i = 0; i < globels.productFilterOptionValue.keys.length; i++) {
  //         Map<String, dynamic> valueMap =
  //             json.decode((globels.productFilterOptionValue.values[i]));

  //         filterarray!.addAll(valueMap);
  //       }
  //     }

  //     page = 1;
  //     context.read<ProductListScreenBloc>().LoadData(widget.collection_id, page,
  //         sorting!.sortKeyProductCollection, sorting!.reverse!,
  //         filters: filterarray, clearCursor: true);
  //   } catch (e) {
  //     e.toString();
  //   }
  // }

  // SortClick() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context1) {
  //       return SortBottomListView((value) {
  //         sorting = value;
  //         page = 1;

  //         context.read<ProductListScreenBloc>().LoadData(widget.collection_id,
  //             page, value.sortKeyProductCollection, value.reverse!,
  //             clearCursor: true);
  //         Navigator.of(context).pop();
  //       });
  //     },
  //   );
  // }

  // SearchClick() {
  //   Navigator.of(context).pushNamed(RouteGenerate.searchScreen);
  // }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchQuery = new TextEditingController();
    // context.read<ProductListScreenBloc>().LoadData(widget.collection_id, page,
    //     sorting!.sortKeyProductCollection, sorting!.reverse!);

    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.primaryColor,
          title: Text(
            "Collection Name",
            // widget.collection_name,
          style: TextStyle(fontFamily: 'Cinzel'),
             ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // SearchClick();
              },
            ),
            Stack(
              children: [
                IconButton(
                    icon: Icon(Icons.sort),
                    onPressed: () {
                      // SortClick();
                    }),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(
                      Icons.info,
                      color: Colors.red,
                      size: 10,
                    ))
              ],
            )
          ]),
      // bottomNavigationBar:
      //     BlocBuilder<ProductListScreenBloc, ProductListScreenState>(
      //   builder: (context, state) {
      //     return SizedBox.shrink();
      //   },
      // ),
      body: ProductListScreenBody()
    
    );
  }

  
}
Widget GetViewForRender(BuildContext context,
  //  ProductListScreenState state
   ) {
    // if (state is ProductListScreenNoInternet) {
    //   return NoInternetView();
    // } else if (state is ProductListScreenLoading) {
    //   return SearchScreenShimmerView().searchscreenshimmereffect(context);
    //   // return ProductDetailShimmerEffects().productdetailsscreenshimmereffect(context);
    // } else if (state is ProductListScreenLoaded) {
      return 
      AnimationLimiter(
          child: GridView.builder(
              physics: ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 1.20),//1.45
                // spacing between rows
                crossAxisSpacing: 10, // spacing between columns
              ),
              padding: EdgeInsets.all(10.0),
              shrinkWrap: true,
              // padding around the grid
              itemCount: 8,// state.list!.length,
              // total number of items
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  columnCount:8,// state.list!.length,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                        child: InkWell(
                            onTap: () {
                          context.push("/${RouteGenerate.productDetailsScreen}");
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(),));
                              // Navigator.of(context).pushNamed(
                              //     RouteGenerate.productDetailsScreen,
                              //     arguments: {state.list![index].id});
                              
                                  // ProductDetailsScreen();
                                  // print("product clicked id is ${state.list![index].id}");
                            },
                            child: 
                            // ProductGridView.GetView(
                            //     context, state.list![index])
                                ProductGridView(context, (productId) {})// state.list![index], (productId){})
                                )),
                  ),
                );
              }));
    // } else {
    //   return NoDataView();
    // }
  }


class ProductListScreenBody extends StatelessWidget {
  const ProductListScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   //  NotificationListener<ScrollEndNotification>(
      //     onNotification: (ScrollEndNotification scrollInfo) {
      //       if (scrollInfo.metrics.pixels ==
      //           scrollInfo.metrics.maxScrollExtent) {
      //         page++;
      //         context.read<ProductListScreenBloc>().LoadData(
      //             widget.collection_id,
      //             page,
      //             sorting!.sortKeyProductCollection,
      //             sorting!.reverse!,
      //             filters: filterarray);
      //         return true;
      //       }
      //       return false;
      //     },
      //     child: BlocListener<ProductListScreenBloc, ProductListScreenState>(
      //         listener: (context, state) {},
              // child:
              //  BlocBuilder<ProductListScreenBloc, ProductListScreenState>(
              //     builder: (context, state) {
              //   return 
                Column(
                  children: [
                    Expanded(child: GetViewForRender(context, //state
                    ))
                  ],
                );
              // })
              // )),;
  }
}