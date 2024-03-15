// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../../../globels.dart' as globals;
// import '../../../shopify_graphql/models/models.dart';
// import '../../../shopify_graphql/models/src/product/price_v_2/price_v_2.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';

// import '../../../shopify_graphql/shopify/src/shopify_store.dart';

// part 'product_details_screen_event.dart';

// part 'product_details_screen_state.dart';

// class ProductDetailsScreenBloc
//     extends Bloc<ProductDetailsScreenEvent, ProductDetailsScreenState> {
//   final String ids;

//   ProductDetailsScreenBloc(this.ids) : super(ProductDetailsScreenInitial()) {
//     on<onPriceUpdateClick>((event, emit) {
//       // TODO: implement event handler;
//      });

//      print("product ids : ${ids}");
//      LoadData(ids);
//     LoadRelatedData(ids);
//   }

//     ProductVariant? _selectedVariant;

//    Product? _product;
//    List<Product>? relatedProductList=[];
//   late int _qantity = 1;
//   int get qantity => _qantity;

//   Product get product => _product!;

//   ProductVariant get selectedVariant => _selectedVariant!;

//   void UpdateProdictVariant(ProductVariant pv) {
//     _selectedVariant = pv;
//       product.tempPrice =pv.price;
//      product.priceCompareUpdate=pv.compareAtPrice;
//     emit(ProductVariantUpdate(pv));
//     emit(ProductDetailsDataLoad(product, relatedProductList, _selectedVariant!));
//   }

//   void LoadData(String id) async {
//     if (await globals.postRepository.isConnected()) {
//       emit(ProductDetailsScreenLoading());
//       List<Product>? product =
//           await ShopifyStore.instance.getProductsByIds([id]);
//       _product = product![0];
//       print("product considering is ${_product!.id.toString()}");
//       _selectedVariant = product![0].productVariants![0];


//       emit(ProductDetailsDataLoad(product![0], relatedProductList, _selectedVariant!));
//     } else {}
//   }


//   void LoadRelatedData(String id) async {
//     try{
//     if (await globals.postRepository.isConnected()) {
//     relatedProductList =
//           await ShopifyStore.instance.getProductRecommendations(id);
//      emit(ProductDetailsDataLoad(_product!, relatedProductList, _selectedVariant!));
//     } 
//     else {}
//     }catch(e){}
//   }

//   void UpdateQty(int updatedCount) {
//     _qantity = updatedCount;
//   }
 
// }













