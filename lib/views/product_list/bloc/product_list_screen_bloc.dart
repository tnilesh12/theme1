// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../../../globels.dart' as globals;

// import '../../../shopify_graphql/enums/src/sort_key_product_collection.dart';
// import '../../../shopify_graphql/models/src/menus_details/items.dart';
// import '../../../shopify_graphql/models/src/product/product.dart';
// import '../../../shopify_graphql/shopify/src/shopify_store.dart';

// part 'product_list_screen_event.dart';

// part 'product_list_screen_state.dart';

// class ProductListScreenBloc
//     extends Bloc<ProductListScreenEvent, ProductListScreenState> {
//   ProductListScreenBloc() : super(ProductListScreenInitial()) {
//     on<ProductListScreenEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }

//   List<Product>? _productList = [];
//   String? cursor;
//   String? collection_handle;

//   void LoadData(String collection_id, int page,
//       SortKeyProductCollection sortKey, bool reverse,
//       {Map<String, dynamic>? filters, bool clearCursor = false}) async {
//         try{
//     if (await globals.postRepository.isConnected()) {
//       if (_productList!.isEmpty) {
//         emit(ProductListScreenLoading());
//       }
//       if (page == 1) {
//         _productList!.clear();
//       }
//       if (clearCursor) {
//         cursor = null;
//       }
//       List<Product>? p = await ShopifyStore.instance
//           .getXProductsAfterCursorWithinCollection(collection_id, 10,
//               sortKey: sortKey,
//               startCursor: cursor,
//               filters: filters,
//               reverse: reverse);
//       _productList!.addAll(p!);
//       print("products id taking is ${p}");
//       cursor = p!.length > 0 ? p!.last.cursor : null;
//       if (_productList == null || _productList!.length == 0) {
//         emit(ProductListScreenNoData());
//       } else {
//         emit(ProductListScreenLoaded(_productList, false));
      
//       }
//     } else {
//       emit(ProductListScreenNoInternet());
//     }
//         }catch(e){}
//   }
// }
