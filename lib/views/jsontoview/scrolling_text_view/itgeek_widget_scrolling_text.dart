import 'dart:async';
import 'package:flutter/material.dart';
import 'package:theme1/modelClass/data_model.dart';
// import 'package:marquee/marquee.dart';


class ItgeekWidgetScrollingText extends StatefulWidget {
  ScrollingTextData scrollingTextData;
  // final List<Map<String, String>> texts;
  // final TextStyle textStyle;
  final double ratioOfBlankToScreen;

  ItgeekWidgetScrollingText(this.scrollingTextData,{
    this.ratioOfBlankToScreen = 0// 0.25,
  });// : assert(texts != null && texts.isNotEmpty);

  // var texts = [
  //   {
  //     'text': " Testing hello ",
  //     'backgroundColor': 'ff0000',
  //     'fontColor': 'ffffff'
  //   },
  //   {
  //     'text': " my 2nd sentence ",
  //     'backgroundColor': 'EAEAEA',
  //     'fontColor': '000000'
  //   },
  //   {
  //     'text': " Testing world ",
  //     'backgroundColor': 'c1c1c1',
  //     'fontColor': '000000'
  //   },
  //   {
  //     'text': " my 1st sentence ",
  //     'backgroundColor': '9A1515',
  //     'fontColor': 'ffffff'
  //   }
  // ];

  TextStyle textStyle = TextStyle();


  @override
  State<StatefulWidget> createState() {
    return ItgeekWidgetScrollingTextState();
  }
}

class ItgeekWidgetScrollingTextState extends State<ItgeekWidgetScrollingText>
    with SingleTickerProviderStateMixin {
  ScrollController? scrollController;
  double? screenWidth;
  double position = 0.0;
  Timer? timer;
  final double _moveDistance = 3.0;
  final int _timerRest = 100;
  GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    WidgetsBinding.instance!.addPostFrameCallback((callback) {
      startTimer();
    });
  }

  void startTimer() {
    if (_key.currentContext != null) {
      double widgetWidth =
          _key.currentContext!.findRenderObject()!.paintBounds.size.width;

      timer = Timer.periodic(Duration(milliseconds: _timerRest), (timer) {
        double maxScrollExtent = scrollController!.position.maxScrollExtent;
        double pixels = scrollController!.position.pixels;
        if (pixels + _moveDistance >= maxScrollExtent) {
          position = (maxScrollExtent -
                      screenWidth! * widget.ratioOfBlankToScreen +
                      widgetWidth) /
                  2 -
              widgetWidth +
              pixels -
              maxScrollExtent;
          scrollController!.jumpTo(position);
        }
        position += _moveDistance;
        scrollController!.animateTo(position,
            duration: Duration(milliseconds: _timerRest), curve: Curves.linear);
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenWidth = MediaQuery.of(context).size.width;
  }

  // Widget getBothEndsChild(Map<String, String> data) {
  Widget getBothEndsChild(ScrollingList data) {
    
    print("bg${data['backgroundColor']}");
    print("bg${data['text']}");
    print("fontColor${data['fontColor']}");
    return Center(
      child: Container(
        
        color: Color(int.parse('FF' + data['backgroundColor']!, radix: 16)),
//Color(int.parse(data['backgroundColor']!, radix: 16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            data.text!,
            style: widget.textStyle.copyWith(
        color: Color(int.parse('FF' + data['fontColor']!, radix: 16)),
              // color: Color(int.parse(data['fontColor']!, radix: 16)),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget getCenterChild() {
    return Container(width: screenWidth! * widget.ratioOfBlankToScreen);
  }

  @override
  void dispose() {
    super.dispose();
    if (timer != null) {
      timer!.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: _key,
      scrollDirection: Axis.horizontal,
      controller: scrollController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        // for (Map<String, String> data in widget.texts) getBothEndsChild(data),
        for (ScrollingList data in widget.scrollingTextData.scrollingList!) getBothEndsChild(data),
        getCenterChild(),
        // for (Map<String, String> data in widget.texts) getBothEndsChild(data),
        for (ScrollingList data in widget.scrollingTextData.scrollingList!) getBothEndsChild(data),
      ],
    );
  }
}

