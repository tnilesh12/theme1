import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:thesatanictemple/shopify_graphql/models/models.dart';
import 'package:thesatanictemple/shopify_graphql/shopify/shopify.dart';

import '../../../../shopify_graphql/models/src/menus_details/menus.dart';
import '../../../../globels.dart' as globals;

import '../../../../shopify_graphql/shopify/src/shopify_auth.dart';
import '../../../../shopify_graphql/shopify/src/shopify_menu.dart';

part 'category_screen_event.dart';

part 'category_screen_state.dart';

class CategoryScreenBloc
    extends Bloc<CategoryScreenEvent, CategoryScreenState> {
  CategoryScreenBloc() : super(CategoryScreenInitial()) {
    on<CategoryScreenEvent>((event, emit) {});

    on<OnCategoryItemClick>((event, emit) {
      ChnageStyle = event.index;
      print("change index" + event.index.toString());
      LoadDataSubCollection([]);
    });

    on<OnSubCategoryItemClick>((event, emit) {});
    // LoadData();
  }

  int? ChnageStyle = 0;
  Menus? _data;

  List<String> ids = [];

  // void LoadData() async {
  //   if (await globals.postRepository.isConnected()) {
  //    // emit(CategoryScreenLoading());
  //     _data = await ShopifyMenu.instance.getMenusByHandle("app-menu");
  //     print("data load from menu");
  //     _data!.items!.forEach((element) {
  //       ids.add(element!.resourceId.toString());
  //       print(element.resourceId.toString());
  //     });
  //     print("${ids.length}");
  //
  //     // if (_data == null) {
  //     //   emit(CategoryScreenNoDataFound());
  //     // } else {
  //     //   try {
  //     //     emit(CategoryScreenLoaded(_data!, 0));
  //     //   } catch (e) {}
  //     // }
  //   }
  // else {
  //   emit(CategoryScreenNoInternetConnection());
  // }
  // }

//////////////////////////from collections/////////////

  List<Collection> COLLECTION = [];
  List<Collection> SUBCOLLECTION = [];

  void LoadDataCollection() async {
    // LoadData();
    if (await globals.postRepository.isConnected()) {
      emit(CategoryScreenLoadingCollection());
      _data = await ShopifyMenu.instance.getMenusByHandle("app-menu");
      print("data load from menu");
      _data!.items!.forEach((element) {
        if (element!.resourceId != null) {
          if (element!.resourceId!.contains("Collection")) {
            ids.add(element!.resourceId.toString());
          }
        }
        print(element.resourceId.toString());
      });
      print(":lenght of data ${ids.length}");
      COLLECTION.clear();
      if (ids.isNotEmpty) {
        COLLECTION = await ShopifyStore.instance.getCollectionsByIds(ids);
      } else {
        COLLECTION = await ShopifyStore.instance.getAllCollections();
      }

      if (COLLECTION == null) {
        emit(CategoryScreenNoDataFound());
      } else {
        emit(CategoryScreenLoadedCollection());
      }
    } else {
      emit(CategoryScreenNoInternetConnection());
    }
  }

  void LoadDataSubCollection(List<String> ids) async {
    if (await globals.postRepository.isConnected()) {
      emit(CategoryScreenLoadingSubCollection());
      if (ids.isNotEmpty)
        SUBCOLLECTION = await ShopifyStore.instance.getCollectionsByIds(ids);
      else
        SUBCOLLECTION = await ShopifyStore.instance.getAllCollections();

      if (SUBCOLLECTION == null) {
        emit(CategoryScreenNoDataFound());
      } else {
        emit(CategoryScreenLoadedSubCollection());
      }
    } else {
      emit(CategoryScreenNoInternetConnection());
    }
  }
}
