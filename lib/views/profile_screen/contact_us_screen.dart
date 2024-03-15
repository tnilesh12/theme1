import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';
import 'package:theme1/views/widgets/common/custom_button.dart';
import 'package:theme1/views/widgets/common/custom_textfield.dart';
import 'package:theme1/views/widgets/common/gap_widget.dart';

class ContactUsScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppTheme.backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Container(
                    // height : 350,
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.black!.withOpacity(0.9),
                          AppTheme.borderColor!
                        ],
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
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.arrow_back),
                                ],
                              ),
                            ),
                          ),
                          GapWidget(
                            size: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GapWidget(
                                size: -5,
                              ),
                              Text(
                                'Contact Us',
                                style: CustomTextTheme.getTextStyle(MyTextStyle.CommonThemeTitle, context)
                                // style: TextStyle(
                                //   fontSize: 24,
                                //   // color: AppTheme.white,
                                //   //           fontWeight: FontWeight.bold
                                // ),
                              ),
                            ],
                          ),
                          GapWidget(
                            size: 5,
                          ),
                          buildContactInfo(Icons.phone, '1515151551515', context),
                          buildContactInfo(
                              Icons.email, 'mailto:itgeeks@example.com', context),
                          buildContactInfo(
                              Icons.location_city, 'India, Canada, USA', context),
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
          //   // color: AppTheme.white,
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
                      hintText: "Name",
                      prefixIcon: Icons.person,
                      obscureText: true, context: context),
                  GapWidget(),
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Email",
                      prefixIcon: Icons.email,
                      obscureText: true, context: context),
                  GapWidget(),
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Number",
                      prefixIcon: Icons.phone,
                      obscureText: true, context: context),
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  // keyboardType: TextInputType.number

                  GapWidget(),
                  CustomTextFormField().SimpleTextFormFieldWithPrefixIcon(
                      hintText: "Message",
                      prefixIcon: Icons.subject,
                      obscureText: true, context: context),
                  // maxLength: 500,
                  // maxLines: 2,
                  GapWidget(),
                  CustomButton(
                    text: "Send",
                    onPressed: () {
                      // Use the controller values here
                      String name = nameController.text;
                      String email = emailController.text;
                      int number = numberController.hashCode;
                      String message = messageController.text;
                      print("asdasd$name");
                      print("asdasd$email");
                      print("asdasd$number");
                      print("asdasd$message");

                      // Implement your logic for submitting the contact form
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
