import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/views/screens/product_grid_view.dart';
import '../../route/route_generate.dart';
import '../../theme/app_theme.dart';
// import '../shimmer/search_shimmer_view.dart';
// import '../widgets/no_data_view.dart';
// import '../widgets/no_internet_view.dart';
import 'bloc/favorite_list_screen_bloc.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../../globels.dart' as globels;

class FavoriteListScreen extends StatefulWidget {
  FavoriteListScreen({super.key});

  @override
  State<FavoriteListScreen> createState() => _FavoriteListScreenState();
}

class _FavoriteListScreenState extends State<FavoriteListScreen> {
  Widget? appBarTitle;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      appBarTitle = Text("Favorites", //AppLocalizations.of(context)!.favorites,
          style: TextStyle(
                                  fontFamily: 'Cinzel',
                                  fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                                  color: AppTheme.white
                              ));
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // context.read<FavoriteListScreenBloc>().LoadData();

    return Scaffold(
        appBar: AppBar(
          title: Text("Favorites",
            // AppLocalizations.of(context)!.favorites,
          ),
        ),
        // bottomNavigationBar:
        //     BlocBuilder<FavoriteListScreenBloc, FavoriteListScreenState>(
        //   builder: (context, state) {
        //     return SizedBox.shrink();
        //   },
        // ),
        body: 
        // BlocListener<FavoriteListScreenBloc, FavoriteListScreenState>(
        //     listener: (context, state) {},
        //     child: BlocBuilder<FavoriteListScreenBloc, FavoriteListScreenState>(
        //         builder: (context, state) {
              // return 
              Column(
                children: [Expanded(child: GetViewForRender(context//, state
                ))],
            //   );
            // })
            )
            );
  }

  Widget GetViewForRender(BuildContext context) {//, FavoriteListScreenState state) {
    // if (state is FavoriteListScreenNoInternet) {
    //   return NoInternetView();
    // } else if (state is FavoriteListScreenLoading) {
    //   return SearchScreenShimmerView().searchscreenshimmereffect(context);
    // } else if (state is FavoriteListScreenLoaded) {
      return AnimationLimiter(
          child: GridView.builder(
              physics: ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 1.45),
                // spacing between rows
                crossAxisSpacing: 10, // spacing between columns
              ),
              padding: EdgeInsets.all(10.0),
              shrinkWrap: true,
              // padding around the grid
              itemCount: 7,// state.list!.length,
              // total number of items
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  columnCount:  7,// state.list!.length,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                        child: InkWell(
                            onTap: () {
                                context.push("/${RouteGenerate.productDetailsScreen}");
                              // Navigator.of(context).pushNamed(
                                  // RouteGenerate.productDetailsScreen,
                                  // arguments: {state.list![index].id});
                            },
                            child:
                                // ProductGridView.GetView(
                                //     context, state.list![index])
            //                     ProductGridView(context, state.list![index], (productId){
            // context.read<FavoriteListScreenBloc>().LoadData();
                                // }
                                ProductGridView(context, (productId) {})// state.list![index], (productId){})
                                )
                                )
                                ),
                  // ),
                );
              })
              );
    // } else {
    //   return NoDataView();
    // }
  }
}
