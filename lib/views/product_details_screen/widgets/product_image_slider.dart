import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:theme1/app_assets.dart';
// import '../../../theme/app_assets.dart';
// import '../../../theme/app_colors.dart';
// import '../../../shopify_graphql/models/src/product/shopify_image/shopify_image.dart';
// import '../../../theme/app_theme.dart';

class ProductImageSlider extends StatelessWidget {
  // final ShopifyImage images;
  final String images;

  const ProductImageSlider(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //AppTheme.white,
      width: MediaQuery.of(context).size.width,
      child:
      CachedNetworkImage(
          imageUrl:  images,//.originalSrc.toString(),
          placeholder: (context, url) =>
              Image.asset("", fit: BoxFit.cover),
          errorWidget: (context, url, error) =>
              Image.asset(
                "assets/images/placeholder-image.jpg",
                // AppAssets.placeholder
                 fit: BoxFit.cover),
          fit: BoxFit.cover)


    );
  }
}
