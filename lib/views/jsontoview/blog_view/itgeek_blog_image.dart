// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// import '../../helper/util.dart';
// import '../../modelClass/data_model.dart';
// import '../full_view/itgeek_widget_full_view.dart';

// class ItgeekWidgetBlog extends StatefulWidget {
//   BlogViewItems blogViewItems;
//   StyleProperties style;

//   ItgeekWidgetBlog(this.blogViewItems, this.style);

//   @override
//   State<ItgeekWidgetBlog> createState() => _ItgeekWidgetBlogState();
// }

// class _ItgeekWidgetBlogState extends State<ItgeekWidgetBlog> {
//   var controller = TextEditingController();

//   @override
//   void initState() {
//     controller.addListener(() {
//       setState(() {
//         mytext = controller.text;
//       });
//     });
//     controller.text = widget.blogViewItems.blogViewDescription!;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   String mytext = "";

//   @override
//   Widget build(BuildContext context) {
//     var textColor = Util.getColorFromHex(widget.style.titleTextColor!);
//     var bgColor = Util.getColorFromHex(widget.style.backgroundColor!);
//     int maxLines = widget.style.descriptionTextNoOfLines!;
//     double fontSize = widget.style.descriptionTextFontSize!;
//     return Container(
//         margin: EdgeInsets.all(widget.style.backgroundMargin!),
//         padding: EdgeInsets.all(widget.style.backgroundPadding!),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(widget.style.radius!.toDouble()),
//           color: bgColor,
//         ),
//         width: double.infinity,
//         height: double.infinity,
//         child: Column(children: [
//           Container(
//             // margin: EdgeInsets.all(widget.style.margin!),
//             // padding: EdgeInsets.all(widget.style.padding!),
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.width,
//             child: ClipRRect(
//                 borderRadius:
//                     BorderRadius.circular(widget.style.radius!.toDouble()),
//                 child: CachedNetworkImage(
//                     fit: BoxFit.fill,
//                     width: double.infinity,
//                     imageUrl: widget.blogViewItems.blogViewImagePath!,
//                     placeholder: (context, url) => Image.asset(
//                           'assets/images/placeholder-image.jpg',
//                           package: 'jsontoview',
//                           fit: BoxFit.fill,
//                         ),
//                     errorWidget: (context, url, error) => Image.asset(
//                           'assets/images/placeholder-image.jpg',
//                           package: 'jsontoview',
//                           fit: BoxFit.fill,
//                         ))

//                 // Image.network(
//                 //   widget.blogViewItems.blogViewImagePath !,
//                 //   fit: BoxFit.cover,
//                 //   width: double.infinity,
//                 // ),
//                 ),
//           ),

//           // SizedBox(
//           //   height: 5,
//           // ),
//           Container(
//             margin: EdgeInsets.all(widget.style.margin!),
//             padding: EdgeInsets.all(widget.style.padding!),
//             child: Text(
//               widget.blogViewItems.blogViewTitle!,
//               style: TextStyle(
//                               fontFamily: 'Cinzel',
//                   fontWeight: FontWeight.w500,
//                   fontSize: widget.style.titleTextFontSize,
//                   color: Util.getColorFromHex(widget.style.titleTextColor!)),
//               maxLines: 2,
//               textAlign: TextAlign.start,
//             ),
//           ),
//           LayoutBuilder(builder: (context, size) {
//             var span = TextSpan(
//               text: mytext,
//               style: TextStyle(
//                               fontFamily: 'Cinzel',fontSize: fontSize),
//             );

//             // Use a textpainter to determine if it will exceed max lines
//             var tp = TextPainter(
//               maxLines: maxLines,
//               // textAlign: TextAlign.left,
//               // textAlign: widget.imageViewData.styleProperties!.alignment! == "left" ? TextAlign.left : widget.imageViewData.styleProperties!.alignment == "right" ? TextAlign.right : TextAlign.center,

//               textDirection: TextDirection.ltr,
//               text: span,
//             );

//             // trigger it to layout
//             tp.layout(maxWidth: size.maxWidth);

//             // whether the text overflowed or not
//             var exceeded = tp.didExceedMaxLines;
//             print("cjvgffmdf ${exceeded}");
//             return Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(widget.style.margin!),
//                   padding: EdgeInsets.all(widget.style.padding!),
//                   child: Text.rich(
//                     span,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                               fontFamily: 'Cinzel',
//                         fontSize: fontSize,
//                         color: Util.getColorFromHex(
//                             widget.style.descriptionTextColor!)),
//                     maxLines: maxLines,
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     print("more clicked");

//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ItgeekWidgetFullView(
//                                 widget.blogViewItems.blogViewImagePath!,
//                                 widget.blogViewItems.blogViewTitle!,
//                                 widget.blogViewItems.blogViewDescription!,
//                                 widget.style.alignment,
//                                 widget.style.titleTextColor,
//                                 widget.style.descriptionTextColor,
//                                 widget.style.titleTextFontSize!,
//                                 widget.style.descriptionTextFontSize!,
//                                 widget.style.padding!,
//                                 widget.style.margin!,
//                                 widget.style.backgroundColor,
//                                 widget.style.backgroundColor)));
//                   },
//                   child: Text(
//                     exceeded ? 'Read More' : '',
//                     style: TextStyle(
//                               fontFamily: 'Cinzel',
//                         color: Colors.blue,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12),
//                   ),
//                 ),
//               ],
//             );
//           })
//         ]));
//   }
// }
