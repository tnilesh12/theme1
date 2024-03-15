import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import '../../database/databases.dart';

class FavoriteView extends StatefulWidget {
  Function(String) OnClick;
  String productId;
  double iconSize;

  FavoriteView(this.productId, this.iconSize, this.OnClick, {super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: 
      // FutureBuilder<bool>(
      //   future: checkFavoriteStatus(widget.productId),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return CircularProgressIndicator();
      //     } else if (snapshot.hasError) {
            // return 
            Icon(Icons.favorite_border, color: Colors.grey),
          // } else {
          //   isFav = snapshot.data ?? false;
          //   return isFav
          //       ? Icon(
          //           Icons.favorite,
          //           color: Colors.red,
          //           size: widget.iconSize,
          //         )
          //       : Icon(
          //           Icons.favorite_border,
          //           color: Colors.grey,
          //           size: widget.iconSize,
          //         );
          // }
        // },
      // ),
      onTap: () async {
         print("fav pressed");
      //  await toggleFavorite(widget.productId);
      //   widget.OnClick(widget.productId);
      //  //context.read<FavoriteBloc>().add(OnFavoriteButtonClick(productId));
      },
    );
  }

  // Future<bool> checkFavoriteStatus(String productId) async {
  //   bool isProductFavorite = await DataBaseUtil.isProductInFavorite(productId);
  //   // print("Is favorite: $isProductFavorite");
  //   return isProductFavorite;
  // }

  //  Future<void> toggleFavorite(String productId) async {
  //   isFav = await checkFavoriteStatus(productId);

  //   if (isFav) {
  //     // Remove the product from favorites
  //     await DataBaseUtil.deleteFavoriteByProductId(productId);
  //   } else {
  //     // Add the product to favorites
  //     await DataBaseUtil.insertFavorite(productId);
  //   }
  //   setState(() {
  //     //isFav = !isFav;
  //   });
  // }
}
