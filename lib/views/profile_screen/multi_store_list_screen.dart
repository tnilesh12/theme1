import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme1/theme/app_theme.dart';
import 'package:theme1/theme/custom_text_theme.dart';
import 'package:theme1/theme/my_text_style.dart';

class MultiStoreScreen extends StatefulWidget {
  const MultiStoreScreen({super.key});

  @override
  State<MultiStoreScreen> createState() => _MultiStoreScreenState();
}

class _MultiStoreScreenState extends State<MultiStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stores"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            // color: AppTheme.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                // height: 70,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Store Name",
                          
                                style: CustomTextTheme.getTextStyle(MyTextStyle.MultiStoreListCardTitle, context)
                          // style: TextStyle(
                          //     fontSize: 20,
                          //     fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.store,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
