
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/custom_button.dart';
import 'package:theme1/views/widgets/common/custom_textfield.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';

class AddressScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  child: Container(
                    // height : 350,
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppTheme.black!.withOpacity(0.9), AppTheme.borderColor!],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.arrow_back),
                                ],
                              ),
                            ),
                          ),
                  GapWidget(size: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                  GapWidget(size: -5,),
                              Text(
                                'Address',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeTitle, context)
                                // style: TextStyle(
                                //   fontSize: 24,
                                //   color:AppTheme.white,
                                // ),
                              ),
                            ],
                          ),
                  GapWidget(size: 5,),
                          buildContactInfo(Icons.phone, '1515151551515', context),
                          buildContactInfo(Icons.email, 'mailto:itgeeks@example.caom', context),
                          buildContactInfo(Icons.location_city, 'Canada,USA,India', context),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 0,
                  right: 0,
                  child: _buildContainer(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
  Widget buildContactInfo(IconData icon, String text, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        GapWidget(),
        Text(
          text,
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeSubTitle, context)
          // style: TextStyle(
          //   fontSize: 15,
          //   color:AppTheme.white,
          // ),
        ),
      ],
    );
  }

  Widget _buildContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // color: Colors.transparent,
          child: Card(
            elevation: 5,
            // color: AppTheme.white,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 480,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Enter Your Address",
                      prefixIcon: Icons.streetview, context: context,
                      obscureText: true),
                  GapWidget(),
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Enter Your City",
                      prefixIcon: Icons.location_city, context: context,
                      obscureText: true),
                  GapWidget(),
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Enter Your State",
                      prefixIcon: Icons.streetview, context: context,
                      obscureText: true),
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  // keyboardType: TextInputType.number
                  GapWidget(),
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Enter Your Postal Code",
                      prefixIcon: Icons.local_post_office, context: context,
                      obscureText: true),
                  // maxLength: 500,
                  // maxLines: 2,
                  GapWidget(),
                  CustomButton(
                    text: "Save Address",
                    onPressed: () {
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

