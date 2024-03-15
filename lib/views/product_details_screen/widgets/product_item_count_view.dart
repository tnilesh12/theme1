import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../../../theme/app_colors.dart';

class ProductItemCountView extends StatefulWidget {
  final bool isDark;
  final int view_type; //0
  final Function(int)? OnCountUpdate;
  late int initialCount;

  ProductItemCountView(
      this.isDark, @required this.OnCountUpdate, this.initialCount, this.view_type,
      {super.key});

  @override
  State<ProductItemCountView> createState() => _ProductItemCountViewState();
}

class _ProductItemCountViewState extends State<ProductItemCountView> {
  var myColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    myColor = widget.isDark ? Colors.white : Colors.grey;
    if(widget.view_type == 0) {
      return Container(
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(color: myColor),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Icon(
                  Icons.remove,
                  color: myColor,
                  size: 15,
                ),
                onTap: () {
                  widget.initialCount = widget.initialCount - 1;
                  if (widget.initialCount < 1) widget.initialCount = 1;
                  widget.OnCountUpdate!.call(widget.initialCount);
                  setState(() {});
                },
              ),
              Text("${widget.initialCount}",
                  style:TextStyle(
                                  fontFamily: 'Cinzel',
                                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                                  color: myColor,

                              )),
              InkWell(
                child: Icon(
                  Icons.add,
                  color: myColor,
                  size: 15,
                ),
                onTap: () {
                  widget.initialCount = widget.initialCount + 1;
                  widget.OnCountUpdate!.call(widget.initialCount);
                  setState(() {});
                },
              )
            ],
          ));
    }
    else {
      return Container(
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Icon(
                  Icons.remove_circle_outline,
                  color: myColor,
                  size: 20,
                ),
                onTap: () {
                  widget.initialCount = widget.initialCount - 1;
                  if (widget.initialCount < 1) widget.initialCount = 1;
                  widget.OnCountUpdate!.call(widget.initialCount);
                  setState(() {});
                },
              ),
              Text("${widget.initialCount}",
                  style: TextStyle(
                                  fontFamily: 'Cinzel',
                                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                                  color:myColor
                              )),
              InkWell(
                child: Icon(
                  Icons.add_circle_outline,
                  color: myColor,
                  size: 20,
                ),
                onTap: () {
                  widget.initialCount = widget.initialCount + 1;
                  widget.OnCountUpdate!.call(widget.initialCount);
                  setState(() {});
                },
              )
            ],
          ));
    }
  }
}
