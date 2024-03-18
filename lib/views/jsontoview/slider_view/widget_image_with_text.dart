import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:theme1/modelClass/data_model.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';

class WidgetImageWithTextBtn extends StatelessWidget {
  ImageBanner imageBanner;
  WidgetImageWithTextBtn(this.imageBanner);
// var imageUrl = "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  @override
  Widget build(BuildContext context) {
    Color buttonSecondary = AppTheme.secondaryButtonBackground!; // Colors.grey;
    Color buttonColor = AppTheme
        .primaryButtonBackground!; // Util.getColorFromHex(imageBanner.sliderButtonColor!);
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.primaryDarkBackgroundColor!.withAlpha(20)
        ,borderRadius: BorderRadius.circular(5)
        // image: DecorationImage(
        //   image: NetworkImage(
        //     imageBanner.imageSrc!,
        //   ),
        //   fit: BoxFit.fitHeight,
        // ),
      ),
      // color: Util.getColorFromHex(sliderItems.sliderBackgroundColor!),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 00.0, sigmaY: 0.0),
          child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetImage(imageBanner.imageSrc!),
              // Container(
              //   // height: 200,
              //   // width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //   ),
              //   // child: Expanded(
              //   child: Image.network(
              //     imageBanner.imageSrc!,
              //     fit: BoxFit.cover,
              //     // ),
              //   ),
              // ),
              imageBanner.heading != ""
                  ? Padding(
                      padding: EdgeInsets.fromLTRB(8, 10, 8, 2),
                      child: Text(imageBanner.heading!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    )
                  : SizedBox(),
              imageBanner.subheading != ""
                  ? Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 8, 6),
                      child: Text(imageBanner.subheading!,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    )
                  : SizedBox(),
              imageBanner.primarybuttonlabel != "" &&
                      imageBanner.secondarybuttonlabel != ""
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(4, 2, 4, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          imageBanner.primarybuttonlabel != ""
                              ? InkWell(
                                  child: Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.blue.shade200,
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        imageBanner.primarybuttonlabel!,
                                      ))),
                                  onTap: () {
                                    print(
                                        "------------clicked1 --------${imageBanner.primarybuttonlink}");
                                    print(
                                        "------------clicked1 --------${imageBanner.primarybtnId}");
                                  },
                                )
                              : SizedBox(),
                          imageBanner.secondarybuttonlabel != ""
                              ? InkWell(
                                  child: Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        imageBanner.secondarybuttonlabel!,
                                      ))),
                                  onTap: () {
                                    print(
                                        "------------clicked2 --------${imageBanner.secondarybuttonlink}");
                                    print(
                                        "------------clicked2 --------${imageBanner.secondarybtnId}");
                                  },
                                )
                              : SizedBox(),
                        ],
                      ),
                    )
                  : SizedBox(),
            ],
          )),
        ),
      ),
    );
  }
}