// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../../helper/viewType.dart';
// import '../../helper/util.dart';
// import '../../modelClass/data_model.dart';
// import '../full_view/itgeek_widget_full_view.dart';

// class ItgeekWidgetFaq extends StatefulWidget {
//   TextListWithDetailsData frequentlyAskedQuestions;
//   ItgeekWidgetFaq(this.frequentlyAskedQuestions);
//   @override
//   State<ItgeekWidgetFaq> createState() => _FAQState();
// }

// class _FAQState extends State<ItgeekWidgetFaq> {
//   // bool answerVisibility = false;
//   bool isExpanded = false;
//   List<QuestionAnswer> listQuestionAnswer = [];
//   QuestionAnswer? previous;

//   @override
//   Widget build(BuildContext context) {
//     widget.frequentlyAskedQuestions.questionAnswer!
//         .map((item) => {listQuestionAnswer.add(item)})
//         .toList();

//     print("listQuestionAnswer $listQuestionAnswer");
//     var containerColor = Util.getColorFromHex(
//         widget.frequentlyAskedQuestions.styleProperties!.backgroundColor!);
//     var questionFontColor = Util.getColorFromHex(
//         widget.frequentlyAskedQuestions.styleProperties!.titleTextColor!);
//     var answerFontColor = Util.getColorFromHex(
//         widget.frequentlyAskedQuestions.styleProperties!.descriptionTextColor!);

//     return Container(
//         width: double.infinity,
//         padding: EdgeInsets.all(widget
//             .frequentlyAskedQuestions.styleProperties!.backgroundPadding!
//             .toDouble()),
//         margin: EdgeInsets.all(widget
//             .frequentlyAskedQuestions.styleProperties!.backgroundMargin!
//             .toDouble()),
//         decoration: BoxDecoration(
//             color: containerColor,
//             borderRadius: BorderRadius.circular(widget
//                 .frequentlyAskedQuestions.styleProperties!.backgroundRadius!
//                 .toDouble())),
//         child: ListView.separated(
//           physics: ClampingScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: listQuestionAnswer.length,
//           separatorBuilder: (context, index) {
//             return Divider(
//               height: 2,
//               color: const Color.fromARGB(255, 84, 84, 84),
//             );
//           },
//           itemBuilder: (context, index) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     if (widget.frequentlyAskedQuestions.ViewType == ViewType.FAQDetailView.name) {
// // Navigator.push(context, MaterialPageRoute(builder: (context)=>ItgeekWidgetFullView(listQuestionAnswer[index])));
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ItgeekWidgetFullView(
//                                   "",
//                                   listQuestionAnswer[index].question!,
//                                   listQuestionAnswer[index].answer,
//                                       widget.frequentlyAskedQuestions.styleProperties!.alignment,
//                                      widget.frequentlyAskedQuestions.styleProperties!.titleTextColor,
//                                       widget.frequentlyAskedQuestions.styleProperties!.descriptionTextColor,
//                                       widget.frequentlyAskedQuestions.styleProperties!.titleTextFontSize!,
//                                       widget.frequentlyAskedQuestions.styleProperties!.descriptionTextFontSize!,
//                                       widget.frequentlyAskedQuestions.styleProperties!.padding!,
//                                       widget.frequentlyAskedQuestions.styleProperties!.margin!,
//                                       widget.frequentlyAskedQuestions.styleProperties!.backgroundColor,
//                                       widget.frequentlyAskedQuestions.styleProperties!.backgroundColor
                                  
                                  
                                  
//                                   )));
//                     } else {
//                       setState(() {
//                         if (listQuestionAnswer[index].expand!) {
//                           listQuestionAnswer[index].expand = false;
//                           isExpanded = false;
//                           previous = null;
//                         } else {
//                           if (previous != null) {
//                             previous!.expand = false;
//                           }
//                           isExpanded = true;
//                           listQuestionAnswer[index].expand = true;
//                           previous = listQuestionAnswer[index];
//                         }
//                         listQuestionAnswer.clear();
//                       });
//                     }
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(
//                         child: Container(
//                           child: Padding(
//                             padding: EdgeInsets.all(widget
//                                 .frequentlyAskedQuestions
//                                 .styleProperties!
//                                 .padding!),
//                             child: Text(
//                               listQuestionAnswer[index].question!,
//                               style: TextStyle(
//                               fontFamily: 'Cinzel',
//                                   color: questionFontColor,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: widget.frequentlyAskedQuestions
//                                       .styleProperties!.titleTextFontSize),
//                             ),
//                           ),
//                         ),
//                       ),
//                       widget.frequentlyAskedQuestions.arrowVisibility!
//                           ? Container(
//                               padding: EdgeInsets.all(16.0),
//                               child: Transform.rotate(
//                                 angle: listQuestionAnswer[index].expand!
//                                     ? 1.5708
//                                     : 0.0, // 90 degrees in radians
//                                 child: Icon(
//                                   Icons.arrow_forward_ios,
//                                   size:
//                                       widget.frequentlyAskedQuestions.iconSize,
//                                   color: Util.getColorFromHex(widget
//                                       .frequentlyAskedQuestions.iconColor!),
//                                 ),
//                               ),
//                             )
//                           : SizedBox()
//                     ],
//                   ),
//                 ),
//                 listQuestionAnswer[index].expand!
//                     ? Padding(
//                         padding: EdgeInsets.all(widget.frequentlyAskedQuestions
//                             .styleProperties!.padding!),
//                         child: Text(
//                           listQuestionAnswer[index].answer!,
//                           style: TextStyle(
//                               fontFamily: 'Cinzel',
//                               color: answerFontColor,
//                               fontWeight: FontWeight.bold,
//                               fontSize: widget.frequentlyAskedQuestions
//                                   .styleProperties!.descriptionTextFontSize),
//                         ),
//                       )
//                     : Container(),
//               ],
//             );
//           },
//         ));
//   }
// }
