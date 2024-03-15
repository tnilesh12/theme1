import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme1/route/go_routes.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';

class AddressListScreen extends StatelessWidget {
  const AddressListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address List",
        ),
        actions: [
          InkWell(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.add, 
                        ),
            ),onTap: (){
            context.push("/${RouteGenerate.addressScreen}");
          },),
          
        ],
      ),
      body: Container(
        // margin: EdgeInsets.only(top: 5, left: 10, right: 10),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Card(
                    // color: AppTheme.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "John Smith",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.AddressListCardTitle, context)
                                // style:
                                //     TextStyle(fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit,),
                          GapWidget(size: -5,),
                                  Icon(Icons.info,),
                                ],
                              )
                            ],
                          ),
                          GapWidget(
                            size: -10,
                          ),
                          Text(
                            "111, Jacob Street, Park Avenue Road",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.AddressListCardSubTitle, context)
                            
                          ),
                          GapWidget(
                            size: -10,
                          ),
                          Text(
                            "London",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.AddressListCardSubTitle, context)
                            
                          ),
                          GapWidget(
                            size: -10,
                          ),
                          Text(
                            "Postal Code",
                                style: CustomTextTheme.getTextStyle(MyTextStyle.AddressListCardSubTitle, context)
                            
                          ),
                          GapWidget(size: -5,),
                          Row(
                            children: [
                              Icon(Icons.call,),
                          GapWidget(size: -5,),
                              Text(
                                '+91-9999 445362',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.AddressListCardSubTitle, context)
                                
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
