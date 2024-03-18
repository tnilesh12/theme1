// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:tacknbark/shopify_graphql/models/models.dart';

// import '../../../../shopify_graphql/models/src/menus_details/menus.dart';
// import 'package:tacknbark/globels.dart' as globals;

// part 'category_screen_event.dart';

// part 'category_screen_state.dart';

// class CategoryScreenBloc
//     extends Bloc<CategoryScreenEvent, CategoryScreenState> {
//   CategoryScreenBloc() : super(CategoryScreenInitial()) {
//     on<CategoryScreenEvent>((event, emit) {});

//     on<OnCategoryItemClick>((event, emit) {
//       // print("object" + event.index.toString());
//       ChnageStyle = event.index;
//       emit(CategoryScreenLoaded(_data!, event.index));
//     });

//     on<OnSubCategoryItemClick>((event, emit) {});
//   }

//   int? ChnageStyle = 0;
//   Menus? _data;

//   void LoadData() async {
//     if (await globals.postRepository.isConnected()) {
//       emit(CategoryScreenLoading());
//       _data = await globals.shopifyMenu.getMenusByHandle("app-menu");
//       // print(_data!.title.toString());

//       if (_data == null) {
//         emit(CategoryScreenNoDataFound());
//       } else {
//         emit(CategoryScreenLoaded(_data!, 0));
//       }
//     } else {
//       emit(CategoryScreenNoInternetConnection());
//     }
//   }
// }
