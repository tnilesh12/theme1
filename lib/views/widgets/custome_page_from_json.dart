import 'dart:convert';

// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme1/helper/action_type.dart';
import 'package:theme1/helper/block_name.dart';
import 'package:theme1/modelClass/builder_json_theme1.dart';
import 'package:theme1/views/jsontoview/faq_view/itgeek_widget_faq.dart';
// import 'package:jsontoview/helper/action_type.dart';
import 'package:theme1/views/jsontoview/banners_view/itgeek_widget_banner_image.dart';
import 'package:theme1/views/jsontoview/banners_view/itgeek_widget_banner_text.dart';
import 'package:theme1/views/jsontoview/banners_view/itgeek_widget_banner_video.dart';
import 'package:theme1/views/jsontoview/banners_view/itgeek_widget_banner_with_button.dart';
import 'package:theme1/views/jsontoview/blog_view/itgeek_widget_blog_view.dart';
import 'package:theme1/views/jsontoview/category_view/itgeek_widget_category.dart';
import 'package:theme1/views/jsontoview/faq_view/itgeek_widget_faq.dart';
import 'package:theme1/views/jsontoview/product_view/Itgeek_widget_product_view.dart';
import 'package:theme1/views/jsontoview/slider_view/widget_slider.dart';
import 'package:theme1/views/jsontoview/textlist_view/itgeek_text_list_view.dart';
import 'package:theme1/views/jsontoview/grid_view/itgeek_widget_grid_view.dart';
import 'package:theme1/views/jsontoview/social_view/itgeek_widget_social_media_link.dart';
// import 'package:theme1/views/jsontoview/helper/util.dart';
// import 'package:theme1/views/jsontoview/helper/views.dart';

// import 'package:jsontoview/views/web_view/itgeek_webview.dart';
// import 'package:jsontoview/views/web_view/itgeek_widget_webview.dart';
// import 'package:thesatanictemple/route/route_generate.dart';
// import 'package:thesatanictemple/shopify_graphql/shopify/shopify.dart';
// import 'package:thesatanictemple/views/blog/blog_handle_screen.dart';
// import 'package:thesatanictemple/views/webview_pages/webview_pages_screen.dart';
// import '../../shopify_graphql/models/src/blog/blog.dart';
// import '../category/best_categorys/widget_best_category.dart';
import '../product_list/best_product/widget_best_product.dart';

class CustomePageFromJson {
  Widget GetWidget(BuildContext context) {//, String jsontag) {
    // print(jsontag);
    // String value = FirebaseRemoteConfig.instance.getValue(jsontag).asString();
    // print(value);
    // Map<String, dynamic> mapValues = jsonDecode(value);
    // print(mapValues);
    // BuilderJsonTheme1Model model = BuilderJsonTheme1Model.fromJson(mapValues);

    return FutureBuilder(
        future: rootBundle.loadString("assets/inUseJson/Dashboard.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = json.decode(snapshot.data!);
            print("ddcdfjcnbw ckjdfhvnekjcjscn dkvkdhvn${list}");
            BuilderJsonTheme1Model model =
                BuilderJsonTheme1Model.fromJson(list);
            print("my list is nnnnnnnnnnnnnnnnnnnn ${model}");
// return Text("Lljdflkdsdfkjdslkfjlk");
           return Container(
              // color: Util.getColorFromHex(model.backgroundColor.toString()),
              child: Column(
                  children:
                 model.builderJsonTheme1!.map((element) {
                    Text("Lljdflkds");
                if (element.blockName == Block_Name.Image_Banner_Slider_Block.name) {
                  return 
                  // Text("Lljdflkds"
                  ItgeekWidgetSlider(element.imageBannerSliderData!,
                      (item) {
                    (element.imageBannerSliderData);
                    print("itemSliders $item");

                    // if (item.sliderBannerType == ActionType.Product.name) {
                    //   Navigator.pushNamed(context, RouteGenerate.productDetailsScreen,
                    //       arguments: {item.sliderBannerUID});
                    // } else if (item.sliderBannerType == ActionType.Category.name) {
                    //   Navigator.pushNamed(context, RouteGenerate.productListScreen,
                    //       arguments: {
                    //         item.sliderBannerUID,
                    //         "title"
                    //         // state.menus.items![index].resourceId,
                    //         // state.menus.items![index].title
                    //       });
                    // } else if (item.sliderBannerType == ActionType.Link.name) {
                    // } else if (item.sliderBannerType == ActionType.Blog.name) {
                    //   Navigator.pushNamed(context, RouteGenerate.blogHandleScreen,
                    //       arguments: {"news"});
                    // } else {
                    //   print("Slider Type Normal");
                    // }
                  }
                  );
                }
                /*
        if (element.view == Block_Name.Scrolling_Text_Block.name) {
          print("mywebbb");
          return ItgeekWidgetWebView(element.scrollingTextData!);
        }
        if (element.view == Block_Name.Collection_Grid_Block.name) {
          return ItgeekWidgetCollectionGridView(element.collectionGridData!);
        }
        if (element.view == Block_Name.Product_Grid_Block.name) {
          return ItgeekWidgetSocialMediaLink(element.productGridData!);
        }

        if (element.view == Block_Name.Count_Down_Timer_Block.name) {
          return ItgeekWidgetTextTile(element.countDownTimerData!);
        }
        if (element.view == Block_Name.Testimonials_Block.name) {
           return ItgeekWidgetFaq(element.testimonialsData!);
        }
        if (element.view == Block_Name.Image_Banner_Block.name) {
          return BestCategorys(element.imageWithTextData!);
        }
        if (element.view == Block_Name.Divider_Block.name) {
          return BestProductView("Feature Product",  (){}, element.divider!);
        }
        if (element.view == Block_Name.Instagram_Feed_Block.name) {
          return ItgeekWidgetBannerText(element.instagramFeedData!, (item) {
            (element.textViewData);
            print("myitemTextView $item");
          });
        }
        if (element.view == Block_Name.BannerImageView.name) {
          return ItgeekWidgetBannerImage(element.imageViewData!, (item) {
            (element.imageViewData);
            print("itemImageView $item");
          });
        }
        if (element.view == Block_Name.BannerButtonTextView.name) {
          return ItgeekWidgetBannerImageButton(element.buttonViewData!, (item) {
            (element.buttonViewData);

            if (item.actionType == ActionType.Route.name) {
              if (item.actionId == "becomeMemberScreen") {
                Navigator.pushNamed(context, RouteGenerate.becomeMemberScreen);
              } else if (item.actionId == "contactFormScreen") {
                Navigator.pushNamed(
                  context,
                  RouteGenerate.contactFormScreen,
                );
              }
            } else if (item.actionType == ActionType.Html.name) {
              print("donation clicked");

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebViewPagesScreen(
                        titleMain: "Donation",
                        urlToLoad: '',
                        bodyTags: FirebaseRemoteConfig.instance
                            .getString(item.actionId.toString()),
                      )));
            } else if (item.actionType == ActionType.Product.name) {
              print(
                  ".......................checking.........................${item.actionId}");

              Navigator.pushNamed(context, RouteGenerate.productDetailsScreen,
                  arguments: {item.actionId});
            }

            print("itemButtonView $item");
          });
        }
        if (element.view == Block_Name.BannerVideoView.name) {
          return ItgeekWidgetBannerVideo(element.videoViewData!, (item) {
            (element.videoViewData);
            print("itemVideoView $item");
          });
        }
        if (element.view == Block_Name.BlogView.name) {
          print("Holder.....kkkkk...............");
          return FutureBuilder<Blog>(
            future: ShopifyBlog.instance.getBlogByHandle("news", 10), // async work
            builder: (BuildContext context, AsyncSnapshot<Blog> snapshot) {
              print("Holder.."+snapshot.toString());

              switch (snapshot.connectionState) {
                case ConnectionState.waiting: return Text('Loading....');
                default:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  else {
                    print(".........................................");
                    print("Holder....................");
                    print(snapshot.data!.toJson());

                    List<dynamic> temp = [];
                    snapshot.data!.articles!.articleList!.forEach((element) {
                      temp.add(element.toJson());
                    });
                    return ItgeekWidgetBlogView(element.blogViewData!, (item) {
                      (element.blogViewData!);
                      print("itemBlogView $item");
                    }, temp);
                  }
              }
            },
          );
        }
*/
                return SizedBox.shrink();
              }).toList()),
            );  
            
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
        });

  }
}
