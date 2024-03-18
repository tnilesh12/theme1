import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theme1/utils/util.dart';
import 'package:theme1/modelClass/BottomBarModel.dart';
import 'package:theme1/modelClass/app_theme_model.dart';
import 'package:theme1/theme/app_theme.dart';

class BottomBar1 extends StatefulWidget {
  // final Function(BottomBarItems bottomBarItems) onTabChange;
  // BottomBarBlockData bottomBarBlockData;
  dynamic list;
  final Function(dynamic bottomBarItems) onTabChange;

  BottomBar1(this.list, {Key? key, required this.onTabChange})
      : super(key: key);

  @override
  State<BottomBar1> createState() => _BottomBar1State();
}

class _BottomBar1State extends State<BottomBar1> {
  // final List<BottomNavyBarItem> items;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).bottomNavigationBarTheme.backgroundColor; // Util.getColorFromHex(widget.bottomBarBlockData.containerStyleSheets!.backgroundColor!);
    final selectedColor = Theme.of(context).bottomNavigationBarTheme.selectedItemColor; // Util.getColorFromHex(widget.bottomBarBlockData.selectedColor!);
    final unSelectedColor = Theme.of(context).bottomNavigationBarTheme.unselectedItemColor; // Util.getColorFromHex(widget.bottomBarBlockData.unSelectedColor!);
    // print("----------------------bottom bar ${widget.list}");
    
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          BoxShadow(
            color: selectedColor!.withOpacity(
                0.5), // Util.getColorFromHex(widget.bottomBarBlockData.selectedColor!).withOpacity(0.5),
            blurRadius: 2,
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                    widget.list.length,
                    (index) => Expanded(
                          child: GestureDetector(
                            onTap: () {
                              //  onItemSelected(index)
                              setState(() {
                                selectedIndex = index;
                                // widget.onTabChange(item); //widget.bottomBarBlockData.bottomBarItems![index]);
                              });

                              widget.onTabChange(widget.list[
                                  index]); // widget.bottomBarBlockData.bottomBarItems![index]);
                            },
                            child: _ItemWidget(
                              // bottomBarBlockData: widget.bottomBarBlockData,
                              item: widget.list[index], // item,
                              isSelected: index == selectedIndex,
                              backgroundColor: bgColor!,
                              selectedColor: selectedColor,
                              unSelectedColor: unSelectedColor!,
                            ),
                          ),
                        ))
              ],
            )

            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: widget.list.length,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     var item = widget.list[index];
            //   return GestureDetector(
            //       onTap: () {
            //         //  onItemSelected(index)
            //         setState(() {
            //           selectedIndex = index;
            //           widget.onTabChange(item); //widget.bottomBarBlockData.bottomBarItems![index]);
            //         });
            //         widget.onTabChange(item);// widget.bottomBarBlockData.bottomBarItems![index]);
            //       },
            //       child: _ItemWidget(
            //         // bottomBarBlockData: widget.bottomBarBlockData,
            //         item: item,
            //         isSelected: index == selectedIndex,
            //         backgroundColor: bgColor,
            //         selectedColor: selectedColor,
            //         unSelectedColor: unSelectedColor,
            //       ),
            //     );
            // },)

            /*  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // children: widget.bottomBarBlockData.bottomBarItems!.map((item) {
            children: widget.list!.forEach((item) {
              // var index = widget.listbottomBarItems!.indexOf(item);
              return GestureDetector(
                onTap: () {
                  //  onItemSelected(index)
                  setState(() {
                    selectedIndex = index;
                    widget.onTabChange(
                        widget.bottomBarBlockData.bottomBarItems![index]);
                  });

                  widget.onTabChange(item);// widget.bottomBarBlockData.bottomBarItems![index]);
                },
                child: _ItemWidget(
                  bottomBarBlockData: widget.list,//.bottomBarBlockData,
                  item: item,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                ),
              );
            }).toList(),
          ),
          */
            ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final bool isSelected;
  final dynamic item;
  final Color backgroundColor;
  // final dynamic bottomBarBlockData;
  final Color selectedColor;
  final Color unSelectedColor;

  const _ItemWidget(
      {super.key,
      // required this.bottomBarBlockData,
      required this.item,
      required this.isSelected,
      required this.backgroundColor,
      required this.selectedColor,
      required this.unSelectedColor});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        // width: isSelected ? 130 : 50,
        height: double.maxFinite,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          color: isSelected
              ? selectedColor.withOpacity(
                  0.2) // Util.getColorFromHex(bottomBarBlockData.selectedColor!).withOpacity(0.2)
              : backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        // child: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   physics: NeverScrollableScrollPhysics(),
        child: Container(
          // width: isSelected ? 50 : 50,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                    size: 24,
                    color: isSelected
                        ? selectedColor.withOpacity(
                            1.0) // Util.getColorFromHex(bottomBarBlockData.selectedColor!).withOpacity(1.0)
                        : unSelectedColor // Util.getColorFromHex(bottomBarBlockData.unSelectedColor!),
                    ),
                child: SvgPicture.string(item["IconSrc"],
                    colorFilter: ColorFilter.mode(
                        isSelected ? selectedColor : unSelectedColor,
                        BlendMode.srcIn)),
                //  Icon(item.linksTo == "Home"
                //     ? Icons.home
                //     : item.linksTo == "Search"
                //         ? Icons.search
                //         : item.linksTo == "Cart"
                //             ? Icons.trolley
                //             : item.linksTo == "Profile"
                //                 ? Icons.person
                //                 : item.linksTo == "More"
                //                     ? Icons.more_horiz
                //                     : Icons.home_max_outlined),
              ),
              // if (isSelected)
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: DefaultTextStyle.merge(
                      style: TextStyle(
                        color:
                            selectedColor, // Util.getColorFromHex(bottomBarBlockData.selectedColor!),
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      child: Text(
                        item["Title"]!,
                        style: TextStyle(
                            color: isSelected
                                ? selectedColor.withOpacity(
                                    1.0) // Util.getColorFromHex(bottomBarBlockData.selectedColor!).withOpacity(1.0)
                                : unSelectedColor, // Util.getColorFromHex(bottomBarBlockData.unSelectedColor!),
                            fontSize:
                                14 // bottomBarBlockData.headingStyleSheets!.fontSize!
                            ),
                      )),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
