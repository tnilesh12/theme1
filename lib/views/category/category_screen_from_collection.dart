import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:thesatanictemple/theme/app_theme.dart';
import 'package:thesatanictemple/views/category/category_row_view_from_collection.dart';
import '../../../shopify_graphql/models/src/menus_details/menus.dart';
import '../../../theme/app_assets.dart';
import '../../../theme/app_colors.dart';

import '../../../views/widgets/no_data_view.dart';
import '../../../views/widgets/no_internet_view.dart';
import '../../route/route_generate.dart';
import '../widgets/header_widget.dart';
import 'bloc/category_screen_bloc.dart';
import 'category_row_view.dart';
import 'category_row_view_right.dart';
import 'category_row_view_right_from_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryScreenFromCollection extends StatefulWidget {
  const CategoryScreenFromCollection({super.key});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreenFromCollection> {
  bool Single_Category = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CategoryScreenBloc>().LoadDataCollection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
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
                              if (state is CategoryScreenLoadingCollection) {
                                return Text("Loading");
                              } else if (state
                                  is CategoryScreenLoadedCollection) {
                                return GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 20,
                                      mainAxisExtent: 150,
                                    ),
                                    padding: EdgeInsets.only(
                                        right: 20, top: 20, left: 20.0),
                                    itemCount: context
                                        .read<CategoryScreenBloc>()
                                        .COLLECTION
                                        .length,
                                    itemBuilder: (context, state1) {
                                      return InkWell(
                                          onTap: () {
                                            if (context
                                                .read<CategoryScreenBloc>()
                                                .COLLECTION[state1]
                                                .id!
                                                .isNotEmpty) {
                                              Navigator.pushNamed(
                                                  context,
                                                  RouteGenerate
                                                      .productListScreen,
                                                  arguments: {
                                                    context
                                                        .read<
                                                            CategoryScreenBloc>()
                                                        .COLLECTION[state1]
                                                        .id,
                                                    context
                                                        .read<
                                                            CategoryScreenBloc>()
                                                        .COLLECTION[state1]
                                                        .title
                                                  });
                                            }
                                          },
                                          child: Container(
                                            height: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                border: Border.all(
                                                    width: 1,
                                                    color:
                                                    AppTheme.black.withAlpha(120))),
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  ClipOval(
                                                      child: Container(
                                                        height: 80,
                                                        width: 80,
                                                        child: CachedNetworkImage(
                                                            imageUrl:
                                                            context
                                                                .read<
                                                                CategoryScreenBloc>()
                                                                .COLLECTION[
                                                            state1]
                                                                .image != null ?context
                                                                .read<
                                                                    CategoryScreenBloc>()
                                                                .COLLECTION[
                                                                    state1]
                                                                .image!
                                                                .originalSrc
                                                                .toString(): "",
                                                            placeholder: (context,
                                                                    url) =>
                                                                Image.asset(
                                                                    AppAssets
                                                                        .placeholder,
                                                                    fit: BoxFit
                                                                        .cover),
                                                            errorWidget: (context,
                                                                    url,
                                                                    error) =>
                                                                Image.asset(
                                                                    AppAssets.placeholder,
                                                                    fit: BoxFit.cover),
                                                            fit: BoxFit.cover),
                                                      )),
                                                  SizedBox(height: 5,),
                                                  Text(
                                                    textAlign: TextAlign.center,
                                                    overflow: TextOverflow.clip,
                                                    maxLines: 2,
                                                    context
                                                        .read<
                                                            CategoryScreenBloc>()
                                                        .COLLECTION[state1]
                                                        .title
                                                        .toString(),
                                                    style: Theme.of(context).textTheme!.titleSmall!.copyWith(color: AppTheme.black,fontFamily: 'Cinzel'),
                                                    softWrap: true,
                                                  ),
                                                ]),
                                          ));
                                    });
                              } else {
                                return const NoDataView();
                              }
                            })))
                    : Expanded(
                        child: Container(
                            color: AppTheme.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(children: [
                                            BlocBuilder<CategoryScreenBloc,
                                                CategoryScreenState>(
                                              builder: (context, state) {
                                                return Container(
                                                    child: SizedBox(
                                                        width: 100,
                                                        height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height,
                                                        child: CategoryRowViewFromCollection(
                                                            menus: context
                                                                .read<
                                                                    CategoryScreenBloc>()
                                                                .COLLECTION)));
                                              },
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              width: 1,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              color: AppTheme.white.withAlpha(120),
                                            ),
                                            BlocBuilder<CategoryScreenBloc,
                                                CategoryScreenState>(
                                              builder: (context, state) {
                                                return Container(
                                                    child: SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width -
                                                            101,
                                                        height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height,
                                                        child: CategoryRowViewRightCategoryRowViewFromCollection(
                                                            menus: context
                                                                .read<
                                                                    CategoryScreenBloc>()
                                                                .COLLECTION)));
                                              },
                                            ),
                                          ]),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ))),
              ],
            ),
          ),
        ));
  }
}
