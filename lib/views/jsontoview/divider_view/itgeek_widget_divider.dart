import 'package:flutter/material.dart';
import 'package:theme1/modelClass/data_model.dart';

class ItgeekWidgetDivider extends StatelessWidget {
  DividerData dividerData;
   ItgeekWidgetDivider(this.dividerData,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: dividerData.space!.toDouble()),
      child: 
         Divider(
            height: 20,
            thickness: 20,
            color: Colors.black,
         )
   );
  }
}

