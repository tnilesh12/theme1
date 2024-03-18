import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:thesatanictemple/theme/app_theme.dart';
import '../../../shopify_graphql/models/src/menus_details/menus.dart';
import '../../../theme/app_assets.dart';
import '../../../theme/app_colors.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../views/widgets/no_data_view.dart';
import '../../../views/widgets/no_internet_view.dart';
import '../../route/route_generate.dart';
import '../widgets/header_widget.dart';
import 'bloc/category_screen_bloc.dart';
import 'category_row_view.dart';
import 'category_row_view_right.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class CategoryL {
  String title = "";

  CategoryL(this.title);
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Menus> menus = [];
  bool Single_Category = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //context.read<CategoryScreenBloc>().LoadData();

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: Container(
              color: Theme.of(context).colorScheme.background,
            child: Column(
              children: [
                HeaderWidget().header(context, false),
                Single_Category
                    ? Expanded(

                    child: BlocListener<CategoryScreenBloc,
                        CategoryScreenState>(
                        listener: (context, state) {},
                        child: BlocBuilder<CategoryScreenBloc,
                            CategoryScreenState>(builder: (context, state) {
                          if (state is CategoryScreenLoading) {
                            return Text(AppLocalizations.of(context)!.loading);
                          } else if (state
                          is CategoryScreenNoInternetConnection) {
                            return const NoInternetView();
                          } else if (state is CategoryScreenLoaded) {
                            return Container(
                              color: AppTheme.white,
                              child: ListView.builder(
                                  itemCount: state.menus.items!.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {


                                        Navigator.pushNamed(context,
                                            RouteGenerate.productListScreen, arguments: {
                                              state.menus.items![index].resourceId,
                                              state.menus.items![index].title
                                            });
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                        Container(
                                        height: 70,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: AppTheme.white.withAlpha(120))),
                                        alignment: Alignment.center,
                                        child: Text(
                                        state.menus.items![index].title!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                          color: AppTheme.black,
                                          overflow:
                                          TextOverflow.ellipsis,fontFamily: 'Cinzel'
                                        ),
                                        softWrap: true,
                                      ),
                                    )])
                                    ,
                                    );
                                  }),
                            );
                          }
                          else{
                            return const NoDataView();
                          }
                        }))


                )
                    : Expanded(
                    child: BlocListener<CategoryScreenBloc,
                        CategoryScreenState>(
                        listener: (context, state) {},
                        child: BlocBuilder<CategoryScreenBloc,
                            CategoryScreenState>(builder: (context, state) {
                          if (state is CategoryScreenLoading) {
                            return Text(AppLocalizations.of(context)!.loading);
                          } else if (state
                          is CategoryScreenNoInternetConnection) {
                            return const NoInternetView();
                          } else if (state is CategoryScreenLoaded) {
                            return Container(
                                color: AppTheme.white,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Row(children: [
                                                Container(
                                                    child: SizedBox(
                                                        width: 100,
                                                        height:
                                                        MediaQuery
                                                            .of(
                                                            context)
                                                            .size
                                                            .height,
                                                        child:
                                                        CategoryRowView(
                                                          menus:
                                                          state.menus,
                                                        ))),
                                                Container(
                                                  margin:
                                                  EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 1,
                                                  height:
                                                  MediaQuery
                                                      .of(context)
                                                      .size
                                                      .height,
                                                  color:
                                                  AppTheme.white.withAlpha(120),
                                                ),
                                                Container(
                                                    child: SizedBox(
                                                        width: MediaQuery
                                                            .of(
                                                            context)
                                                            .size
                                                            .width -
                                                            101,
                                                        height:
                                                        MediaQuery
                                                            .of(
                                                            context)
                                                            .size
                                                            .height,
                                                        child: CategoryRowViewRight(
                                                            menus:
                                                            state.menus,
                                                            mainIndex: state
                                                                .index))),
                                              ]),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          } else {
                            return const NoDataView();
                          }
                        }))),
              ],
            ),
          ),
        ));
  }
}
