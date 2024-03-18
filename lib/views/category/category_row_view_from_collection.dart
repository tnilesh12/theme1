import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thesatanictemple/shopify_graphql/models/models.dart';
import 'package:thesatanictemple/theme/app_theme.dart';
import '../../../shopify_graphql/models/src/menus_details/menus.dart';
import '../../../theme/app_colors.dart';
import '../../theme/app_assets.dart';
import 'bloc/category_screen_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryRowViewFromCollection extends StatelessWidget {
  final List<Collection> menus;

  CategoryRowViewFromCollection({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryScreenBloc, CategoryScreenState>(
        builder: (context, state) {
      return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: menus!.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppTheme.black.withAlpha(120))),
                child: InkResponse(
                  child: Column(
                    children: [
                      Container(
                        color: context.read<CategoryScreenBloc>().ChnageStyle ==
                                index
                            ? AppTheme.black.withAlpha(120)
                            : AppTheme.black,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child: Container(
                              height: 40,
                              width: 40,
                              child: CachedNetworkImage(
                                  imageUrl: context
                                              .read<CategoryScreenBloc>()
                                              .COLLECTION[index]
                                              .image !=
                                          null
                                      ? context
                                          .read<CategoryScreenBloc>()
                                          .COLLECTION[index]
                                          .image!
                                          .originalSrc
                                          .toString()
                                      : "",
                                  placeholder: (context, url) => Image.asset(
                                      AppAssets.placeholder,
                                      fit: BoxFit.cover),
                                  errorWidget: (context, url, error) =>
                                      Image.asset(AppAssets.placeholder,
                                          fit: BoxFit.cover),
                                  fit: BoxFit.cover),
                            )),
                            Text(menus![index].title.toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: AppTheme.black,fontFamily: 'Cinzel')),
                          ],
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    context
                        .read<CategoryScreenBloc>()
                        .add(OnCategoryItemClick(index));
                  },
                ));
          });
    });
  }
}
