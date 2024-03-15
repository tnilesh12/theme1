// // import 'package:shopifyappbuilder/modelClass/BottomBarModel.dart';

// class AppThemeModel {
//   String? blockName;
//   AppThemeBlockData? appThemeBlockData;

//   AppThemeModel({this.blockName, this.appThemeBlockData});

//   AppThemeModel.fromJson(Map<String, dynamic> json) {
//     blockName = json['Block_Name'];
//     appThemeBlockData = json['AppThemeBlockData'] != null
//         ? new AppThemeBlockData.fromJson(json['AppThemeBlockData'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Block_Name'] = this.blockName;
//     if (this.appThemeBlockData != null) {
//       data['AppThemeBlockData'] = this.appThemeBlockData!.toJson();
//     }
//     return data;
//   }
// }

// class AppThemeBlockData {
//   int? id;
//   String? appBackgroundColor;
//   String? primaryTextColor;
//   String? appBarTitle;
//   String? appLogo;
//   bool? showBottomBarView;
//   bool? showDrawerView;
//   String? cartIcon;
//   String? cartLinksTo;
//   CartIconStyle? cartIconStyle;
//   String? menuIcon;
//   String? menuLinksTo;
//   CartIconStyle? menuIconStyle;
//   HeadingStyleSheets? headingStyleSheets;
//   DrawerBlockData? drawerBlockData;
//   BottomBarBlockData? bottomBarBlockData;

//   AppThemeBlockData(
//       {this.id,
//       this.appBackgroundColor,
//       this.primaryTextColor,
//       this.appBarTitle,
//       this.appLogo,
//       this.showBottomBarView,
//       this.showDrawerView,
//       this.cartIcon,
//       this.cartLinksTo,
//       this.cartIconStyle,
//       this.menuIcon,
//       this.menuLinksTo,
//       this.menuIconStyle,
//       this.headingStyleSheets,
//       this.drawerBlockData,
//       this.bottomBarBlockData});

//   AppThemeBlockData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     appBackgroundColor = json['AppBackgroundColor'];
//     primaryTextColor = json['PrimaryTextColor'];
//     appBarTitle = json['AppBarTitle'];
//     appLogo = json['AppLogo'];
//     showBottomBarView = json['ShowBottomBarView'];
//     showDrawerView = json['ShowDrawerView'];
//     cartIcon = json['CartIcon'];
//     cartLinksTo = json['CartLinksTo'];
//     cartIconStyle = json['CartIconStyle'] != null
//         ? new CartIconStyle.fromJson(json['CartIconStyle'])
//         : null;
//     menuIcon = json['MenuIcon'];
//     menuLinksTo = json['MenuLinksTo'];
//     menuIconStyle = json['MenuIconStyle'] != null
//         ? new CartIconStyle.fromJson(json['MenuIconStyle'])
//         : null;
//     headingStyleSheets = json['Heading_styleSheets'] != null
//         ? new HeadingStyleSheets.fromJson(json['Heading_styleSheets'])
//         : null;
//     drawerBlockData = json['DrawerBlockData'] != null
//         ? new DrawerBlockData.fromJson(json['DrawerBlockData'])
//         : null;
//     bottomBarBlockData = json['BottomBarBlockData'] != null
//         ? new BottomBarBlockData.fromJson(json['BottomBarBlockData'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['AppBackgroundColor'] = this.appBackgroundColor;
//     data['PrimaryTextColor'] = this.primaryTextColor;
//     data['AppBarTitle'] = this.appBarTitle;
//     data['AppLogo'] = this.appLogo;
//     data['ShowBottomBarView'] = this.showBottomBarView;
//     data['ShowDrawerView'] = this.showDrawerView;
//     data['CartIcon'] = this.cartIcon;
//     data['CartLinksTo'] = this.cartLinksTo;
//     if (this.cartIconStyle != null) {
//       data['CartIconStyle'] = this.cartIconStyle!.toJson();
//     }
//     data['MenuIcon'] = this.menuIcon;
//     data['MenuLinksTo'] = this.menuLinksTo;
//     if (this.menuIconStyle != null) {
//       data['MenuIconStyle'] = this.menuIconStyle!.toJson();
//     }
//     if (this.headingStyleSheets != null) {
//       data['Heading_styleSheets'] = this.headingStyleSheets!.toJson();
//     }
//     if (this.drawerBlockData != null) {
//       data['DrawerBlockData'] = this.drawerBlockData!.toJson();
//     }
//     if (this.bottomBarBlockData != null) {
//       data['BottomBarBlockData'] = this.bottomBarBlockData!.toJson();
//     }
//     return data;
//   }
// }

// class CartIconStyle {
//   String? color;
//   String? alignItems;
//   String? width;
//   String? height;

//   CartIconStyle({this.color, this.alignItems, this.width, this.height});

//   CartIconStyle.fromJson(Map<String, dynamic> json) {
//     color = json['Color'];
//     alignItems = json['AlignItems'];
//     width = json['width'];
//     height = json['Height'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Color'] = this.color;
//     data['AlignItems'] = this.alignItems;
//     data['width'] = this.width;
//     data['Height'] = this.height;
//     return data;
//   }
// }

// class HeadingStyleSheets {
//   String? width;
//   String? color;
//   double? fontSize;
//   String? fontWeight;
//   String? fontName;
//   String? fontStyle;
//   String? border;
//   String? outline;
//   double? paddingLeft;
//   double? paddingRight;
//   double? paddingTop;
//   double? paddingBottom;
//   String? borderRadius;
//   String? backgroundColor;
//   String? alignItems;

//   HeadingStyleSheets(
//       {this.width,
//       this.color,
//       this.fontSize,
//       this.fontWeight,
//       this.fontName,
//       this.fontStyle,
//       this.border,
//       this.outline,
//       this.paddingLeft,
//       this.paddingRight,
//       this.paddingTop,
//       this.paddingBottom,
//       this.borderRadius,
//       this.backgroundColor,
//       this.alignItems});

//   HeadingStyleSheets.fromJson(Map<String, dynamic> json) {
//     width = json['width'];
//     color = json['color'];
//     fontSize = double.parse(json['fontSize']);
//     fontWeight = json['fontWeight'];
//     fontName = json['fontName'];
//     fontStyle = json['fontStyle'];
//     border = json['border'];
//     outline = json['outline'];
//     paddingLeft = double.parse(json['paddingLeft']);
//     paddingRight = double.parse(json['paddingRight']);
//     paddingTop = double.parse(json['paddingTop']);
//     paddingBottom = double.parse(json['paddingBottom']);
//     borderRadius = json['borderRadius'];
//     backgroundColor = json['backgroundColor'];
//     alignItems = json['alignItems'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['width'] = this.width;
//     data['color'] = this.color;
//     data['fontSize'] = this.fontSize;
//     data['fontWeight'] = this.fontWeight;
//     data['fontName'] = this.fontName;
//     data['fontStyle'] = this.fontStyle;
//     data['border'] = this.border;
//     data['outline'] = this.outline;
//     data['paddingLeft'] = this.paddingLeft;
//     data['paddingRight'] = this.paddingRight;
//     data['paddingTop'] = this.paddingTop;
//     data['paddingBottom'] = this.paddingBottom;
//     data['borderRadius'] = this.borderRadius;
//     data['backgroundColor'] = this.backgroundColor;
//     data['alignItems'] = this.alignItems;
//     return data;
//   }
// }

// class DrawerBlockData {
//   int? id;
//   String? selectedBackgroundColor;
//   String? unSelectedBackgroundColor;
//   String? selectedTextColor;
//   String? unSelectedTextColor;
//   List<DrawerBarItems>? drawerBarItems;
//   ContainerStyleSheets? containerStyleSheets;
//   HeadingStyleSheets? headingStyleSheets;

//   DrawerBlockData(
//       {this.id,
//       this.selectedBackgroundColor,
//       this.unSelectedBackgroundColor,
//       this.selectedTextColor,
//       this.unSelectedTextColor,
//       this.drawerBarItems,
//       this.containerStyleSheets,
//       this.headingStyleSheets});

//   DrawerBlockData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     selectedBackgroundColor = json['SelectedBackgroundColor'];
//     unSelectedBackgroundColor = json['UnSelectedBackgroundColor'];
//     selectedTextColor = json['SelectedTextColor'];
//     unSelectedTextColor = json['UnSelectedTextColor'];
//     if (json['DrawerBarItems'] != null) {
//       drawerBarItems = <DrawerBarItems>[];
//       json['DrawerBarItems'].forEach((v) {
//         drawerBarItems!.add(new DrawerBarItems.fromJson(v));
//       });
//     }
//     containerStyleSheets = json['Container_StyleSheets'] != null
//         ? new ContainerStyleSheets.fromJson(json['Container_StyleSheets'])
//         : null;
//     headingStyleSheets = json['Heading_styleSheets'] != null
//         ? new HeadingStyleSheets.fromJson(json['Heading_styleSheets'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['SelectedBackgroundColor'] = this.selectedBackgroundColor;
//     data['UnSelectedBackgroundColor'] = this.unSelectedBackgroundColor;
//     data['SelectedTextColor'] = this.selectedTextColor;
//     data['UnSelectedTextColor'] = this.unSelectedTextColor;
//     if (this.drawerBarItems != null) {
//       data['DrawerBarItems'] =
//           this.drawerBarItems!.map((v) => v.toJson()).toList();
//     }
//     if (this.containerStyleSheets != null) {
//       data['Container_StyleSheets'] = this.containerStyleSheets!.toJson();
//     }
//     if (this.headingStyleSheets != null) {
//       data['Heading_styleSheets'] = this.headingStyleSheets!.toJson();
//     }
//     return data;
//   }
// }

// class DrawerBarItems {
//   String? title;
//   String? logo;
//   String? linksTo;
//   List<SubDrawerBarItems>? subDrawerBarItems;

//   DrawerBarItems({this.title, this.logo, this.linksTo, this.subDrawerBarItems});

//   DrawerBarItems.fromJson(Map<String, dynamic> json) {
//     title = json['Title'];
//     logo = json['Logo'];
//     linksTo = json['LinksTo'];
//     if (json['SubDrawerBarItems'] != null) {
//       subDrawerBarItems = <SubDrawerBarItems>[];
//       json['SubDrawerBarItems'].forEach((v) {
//         subDrawerBarItems!.add(new SubDrawerBarItems.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Title'] = this.title;
//     data['Logo'] = this.logo;
//     data['LinksTo'] = this.linksTo;
//     if (this.subDrawerBarItems != null) {
//       data['SubDrawerBarItems'] =
//           this.subDrawerBarItems!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class SubDrawerBarItems {
//   String? title;
//   String? logo;
//   String? linksTo;

//   SubDrawerBarItems({this.title, this.logo, this.linksTo});

//   SubDrawerBarItems.fromJson(Map<String, dynamic> json) {
//     title = json['Title'];
//     logo = json['Logo'];
//     linksTo = json['LinksTo'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Title'] = this.title;
//     data['Logo'] = this.logo;
//     data['LinksTo'] = this.linksTo;
//     return data;
//   }
// }

// class ContainerStyleSheets {
//   String? width;
//   double? paddingLeft;
//   double? paddingRight;
//   double? paddingTop;
//   double? paddingBottom;
//   String? display;
//   String? border;
//   String? borderWidth;
//   String? borderColor;
//   String? cursor;
//   String? borderRadius;
//   String? alignItems;
//   String? backgroundColor;

//   ContainerStyleSheets(
//       {this.width,
//       this.paddingLeft,
//       this.paddingRight,
//       this.paddingTop,
//       this.paddingBottom,
//       this.display,
//       this.border,
//       this.borderWidth,
//       this.borderColor,
//       this.cursor,
//       this.borderRadius,
//       this.alignItems,
//       this.backgroundColor});

//   ContainerStyleSheets.fromJson(Map<String, dynamic> json) {
//     width = json['width'];
//     paddingLeft= double.parse(json['paddingLeft']);
//     paddingRight = double.parse(json['paddingRight']);
//     paddingTop = double.parse(json['paddingTop']);
//     paddingBottom = double.parse(json['paddingBottom']);
//     display = json['display'];
//     border = json['border'];
//     borderWidth = json['borderWidth'];
//     borderColor = json['borderColor'];
//     cursor = json['cursor'];
//     borderRadius = json['borderRadius'];
//     alignItems = json['alignItems'];
//     backgroundColor = json['backgroundColor'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['width'] = this.width;
//     data['paddingLeft'] = this.paddingLeft;
//     data['paddingRight'] = this.paddingRight;
//     data['paddingTop'] = this.paddingTop;
//     data['paddingBottom'] = this.paddingBottom;
//     data['display'] = this.display;
//     data['border'] = this.border;
//     data['borderWidth'] = this.borderWidth;
//     data['borderColor'] = this.borderColor;
//     data['cursor'] = this.cursor;
//     data['borderRadius'] = this.borderRadius;
//     data['alignItems'] = this.alignItems;
//     data['backgroundColor'] = this.backgroundColor;
//     return data;
//   }
// }

// class BottomBarBlockData {
//   int? id;
//   String? selectedColor;
//   String? unSelectedColor;
//   bool? showBottomBarTextView;
//   bool? showBottomBarIcon;
//   List<BottomBarItems>? bottomBarItems;
//   ContainerStyleSheets? containerStyleSheets;
//   HeadingStyleSheets? headingStyleSheets;

//   BottomBarBlockData(
//       {this.id,
//       this.selectedColor,
//       this.unSelectedColor,
//       this.showBottomBarTextView,
//       this.showBottomBarIcon,
//       this.bottomBarItems,
//       this.containerStyleSheets,
//       this.headingStyleSheets});

//   BottomBarBlockData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     selectedColor = json['SelectedColor'];
//     unSelectedColor = json['UnSelectedColor'];
//     showBottomBarTextView = json['ShowBottomBarTextView'];
//     showBottomBarIcon = json['ShowBottomBarIcon'];
//     if (json['BottomBarItems'] != null) {
//       bottomBarItems = <BottomBarItems>[];
//       json['BottomBarItems'].forEach((v) {
//         bottomBarItems!.add(new BottomBarItems.fromJson(v));
//       });
//     }
//     containerStyleSheets = json['Container_StyleSheets'] != null
//         ? new ContainerStyleSheets.fromJson(json['Container_StyleSheets'])
//         : null;
//     headingStyleSheets = json['Heading_styleSheets'] != null
//         ? new HeadingStyleSheets.fromJson(json['Heading_styleSheets'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['SelectedColor'] = this.selectedColor;
//     data['UnSelectedColor'] = this.unSelectedColor;
//     data['ShowBottomBarTextView'] = this.showBottomBarTextView;
//     data['ShowBottomBarIcon'] = this.showBottomBarIcon;
//     if (this.bottomBarItems != null) {
//       data['BottomBarItems'] =
//           this.bottomBarItems!.map((v) => v.toJson()).toList();
//     }
//     if (this.containerStyleSheets != null) {
//       data['Container_StyleSheets'] = this.containerStyleSheets!.toJson();
//     }
//     if (this.headingStyleSheets != null) {
//       data['Heading_styleSheets'] = this.headingStyleSheets!.toJson();
//     }
//     return data;
//   }
// }


// class BottomBarItems2 {
//   String? title;
//   String? logo;
//   String? linksTo;

//   BottomBarItems({this.title, this.logo, this.linksTo});

//   BottomBarItems.fromJson(Map<String, dynamic> json) {
//     title = json['Title'];
//     logo = json['Logo'];
//     linksTo = json['LinksTo'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Title'] = this.title;
//     data['Logo'] = this.logo;
//     data['LinksTo'] = this.linksTo;
//     return data;
//   }
// }



