import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryRowView extends StatelessWidget {
  final menus;

  CategoryRowView({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<CategoryScreenBloc, CategoryScreenState>(
    //     builder: (context, state) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: menus.length, // menus.items!.length,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1 //, color: AppColor.whiteLight
                      )),
              // padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: InkResponse(
                child: Column(
                  children: [
                    Container(
                      // color: context.read<CategoryScreenBloc>().ChnageStyle ==
                      //         index
                      //     ? AppColor.whiteLight
                      //     : AppColor.white,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Text(
                          menus[index][
                              "title"], //menus.items![index].title.toString(),
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    )
                  ],
                ),
                onTap: () {
                  // setState(() {
                  //   ChnageStyle = index;
                  // });
                  // context
                  //     .read<CategoryScreenBloc>()
                  //     .add(OnCategoryItemClick(index));
                },
              ));
        });
    // });
  }
}
