import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:theme1/modelClass/data_model.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/views/jsontoview/slider_view/widget_image.dart';
import 'widget_image_with_text.dart';
import 'widget_image_with_text_button.dart';

class ItgeekWidgetSlider extends StatefulWidget {
  Function(ImageBanner) OnClick;
  ImageBannerSliderData imageBannerSliderData;

  ItgeekWidgetSlider(this.imageBannerSliderData, this.OnClick);

  @override
  State<ItgeekWidgetSlider> createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<ItgeekWidgetSlider> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var myBool = true;
    if (widget.imageBannerSliderData.slideHeight! == "Medium") { //sliderViewType! == "Enlarge") {
      myBool = true;
    } else {
      myBool = false;
    }

    Color indicatorSelectedColor = AppTheme.primaryColor!;
        // Util.getColorFromHex(widget.imageBannerSliderData.sliderIndicatorSelectedColor!);
    Color indicatorUnSelectedColor =AppTheme.primaryColor!.withAlpha(50);
        // Util.getColorFromHex(widget.imageBannerSliderData.sliderIndicatorUnSelectedColor!);

    List<Widget> carouselItems = widget.imageBannerSliderData.imageBanner!.map((item) {
      // if (item.sliderType == ViewType.SliderImageView.name) {
      //   return InkWell(
      //       onTap: () {
      //         widget.OnClick(item);
      //       },
      //       child: WidgetImage(item));
      // } else if (item.sliderType == ViewType.SliderImageWithTextView.name) {
      //   return InkWell(
      //       onTap: () {
      //         widget.OnClick(item);
      //       },
      //       child: WidgetImageWithText(item));
      // } else {
        return InkWell(
            onTap: () {
              widget.OnClick(item);
            },
            // child: WidgetImageSlider(item));
            child: WidgetImageWithTextBtn(item));
            // child: WidgetImageWithTextButton(item));
      // }
    }).toList();

    return Container(
        child: Padding(
      padding: EdgeInsets.all(2),//, bottom: 8.0),
      child: Stack(
        children: [
          InkWell(
            onTap: () {},
            child: CarouselSlider(
              items: carouselItems,
              carouselController: carouselController,
              options: CarouselOptions(
                  enlargeCenterPage: myBool,
                  autoPlay: bool.parse(widget.imageBannerSliderData.autoSwitchSlides!) ?? false,
                  aspectRatio: 1,//16 / 9,
                  // aspectRatio: widget.imageBannerSliderData.sliderAspectRatio!,
                  // autoPlayCurve: Curves.linear,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.88,// widget.imageBannerSliderData.sliderViewPortFraction!,
                  // autoPlayAnimationDuration: Duration(seconds: widget.imageBannerSliderData.changeSlidesEvery!),
                  autoPlayInterval:  Duration(seconds: widget.imageBannerSliderData.changeSlidesEvery!),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          ),
          Positioned(
              bottom: 7,//20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    widget.imageBannerSliderData.imageBanner!.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7,
                      margin: const EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? indicatorSelectedColor
                              : indicatorUnSelectedColor),
                    ),
                  );
                }).toList(),
              ))
        ],
      ),
    ));
  }
}
