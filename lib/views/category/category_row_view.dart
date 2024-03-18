import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thesatanictemple/theme/app_theme.dart';
import '../../../shopify_graphql/models/src/menus_details/menus.dart';
import '../../../theme/app_colors.dart';
import 'bloc/category_screen_bloc.dart';

class CategoryRowView extends StatelessWidget {
  final Menus menus;

  CategoryRowView({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryScreenBloc, CategoryScreenState>(
        builder: (context, state) {
      return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: menus.items!.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppTheme.white.withAlpha(120))),
         
                child: InkResponse(
                  child: Column(
                    children: [
                      Container(
                        color: context.read<CategoryScreenBloc>().ChnageStyle ==
                                index
                            ? AppTheme.white.withAlpha(120)
                            : AppTheme.white,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Text(menus.items![index].title.toString(),
                           
                            style:
                                Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.black,fontFamily: 'Cinzel')),
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
