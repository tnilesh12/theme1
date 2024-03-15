// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme1/views/favorite/favorite_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:jsontoview/views/banners_view/itgeek_widget_banner_text.dart';
// import '../../../repository/ApiConst.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';
// import '../../../theme/app_colors.dart';
import '../../../views/product_details_screen/bloc/product_details_screen_bloc.dart';
import '../../../views/product_details_screen/widgets/product_image_slider.dart';
// import 'package:share_plus/share_plus.dart';
// import '../../../shopify_graphql/models/src/product/product.dart';
// import '../../../shopify_graphql/models/src/product/shopify_image/shopify_image.dart';

class ProductPageSlider extends StatelessWidget {
  PageController controllerImage = PageController(initialPage:  0);
  // final List<ShopifyImage> productImg;
   var productImg = 
   [
         "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
         "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  String productId;

  // ProductPageSlider(this.productImg, this.productId, {super.key});
  ProductPageSlider(this.productId, {super.key});



  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [];
    // for (ShopifyImage si in productImg) {
    //   pages.add(ProductImageSlider(si));
    // }

    for (String img in productImg) {
      pages.add(ProductImageSlider(img));

    }


    // return BlocBuilder<ProductDetailsScreenBloc, ProductDetailsScreenState>(
    //   builder: (context, state) {
    //     if(state is ProductDetailsDataLoad)
    //       {
    //         int i = 0;
    //         try {
    //           for (ShopifyImage si in productImg) {
    //             if (si.id == state.variant.image!.id) {
    //               // controllerImage = PageController(
    //               // initialPage: i, keepPage: true, viewportFraction: 1);
    //               controllerImage.jumpToPage(i);
    //               break;
    //             }
    //             i++;
    //           }
    //         }catch(e){}
    //       }
        return Container(
            height: 400,
            child: Stack(
              children: [
                PageView(controller: controllerImage, children: pages),

                Positioned(
                    top: 10, right: 10, child:  FavoriteView(productId, 28, (productId){}))
                // Positioned(
                //     top: 40,
                //     left: 0,
                //     child: RawMaterialButton(
                //       onPressed: () {
                //         Navigator.of(context).pop();
                //
                //       },
                //       elevation: 1.0,
                //       fillColor: AppColor.primaryColor,
                //       padding: const EdgeInsets.all(10.0),
                //       shape: const CircleBorder(),
                //       child: const Icon(
                //         Icons.arrow_back,
                //         color: AppColor.white,
                //         size: 25.0,
                //       ),
                //     )),
                //
                // // Positioned(
                // //     top: 40,
                // //     right: 0,
                // //     child: RawMaterialButton(
                // //       onPressed: () {},
                // //       elevation: 1.0,
                // //       fillColor: Colors.transparent,
                // //       padding: const EdgeInsets.all(10.0),
                // //       shape: const CircleBorder(),
                // //       child: const Icon(
                // //         Icons.favorite_border,
                // //         size: 25.0,
                // //         color: Colors.white,
                // //       ),
                // //     )),
                //
                // Positioned(
                //     top: 40 ,
                //     right: 0,
                //     child: RawMaterialButton(
                //       onPressed: () {
                //         Product p = context.read<ProductDetailsScreenBloc>().product;
                //         String url = "${FirebaseRemoteConfig.instance.getString("shopName")}/products/${p.title!.toLowerCase().replaceAll(" ", "-")}";
                //          Share.share(url);
                //       },
                //       elevation: 1.0,
                //       fillColor: Colors.transparent,
                //       padding: const EdgeInsets.all(10.0),
                //       shape: const CircleBorder(),
                //       child: const Icon(
                //         Icons.share_outlined,
                //         size: 25.0,
                //         color: Colors.white,
                //       ),
                //     ))
              ],
            ));
      // },
    // );
  }
}
