// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:thesatanictemple/database/databases.dart';
// import 'package:thesatanictemple/database/favorite.dart';
// import '../../../globels.dart' as globals;
// import '../../../shopify_graphql/enums/src/sort_key_product_collection.dart';
// import '../../../shopify_graphql/models/src/product/product.dart';
// import '../../../shopify_graphql/shopify/src/shopify_store.dart';
// part 'favorite_list_screen_event.dart';
// part 'favorite_list_screen_state.dart';

// class FavoriteListScreenBloc
//     extends Bloc<FavoriteListScreenEvent, FavoriteListScreenState> {
//   FavoriteListScreenBloc() : super(FavoriteListScreenInitial()) {
//     on<FavoriteListScreenEvent>((event, emit) {
      
//     });
//   }

//   List<Product>? _productList = [];

//   void LoadData() async {
//     try {

//       List<String> favoriteProducts = await DataBaseUtil.getFavoriteListProductsIds();
//   print("favoriteProducts: ${favoriteProducts.length}");

//       if (await globals.postRepository.isConnected()) {
//       //  await Future.delayed(Duration.secondsPerMinute());
//     _productList!.clear();
//         // if (_productList!.isEmpty) {
//           emit(FavoriteListScreenLoading());
//         List<Product>? p = await ShopifyStore.instance
//             .getProductsByIds(favoriteProducts);


//         _productList!.addAll(p!);
//         if (_productList == null || _productList!.length == 0) {
//           emit(FavoriteListScreenNoData());
//         } else {
//           emit(FavoriteListScreenLoaded(_productList, false));
//         }
//       } else {
//         emit(FavoriteListScreenNoInternet());
//       }
//     } catch (e) {}
//   }
// }
