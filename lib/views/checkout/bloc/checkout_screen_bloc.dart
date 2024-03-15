// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../../../shopify_graphql/models/src/order/order.dart';
// import '../../../shopify_graphql/models/src/shopify_user/address/address.dart';
// import '../../../shopify_graphql/shopify/src/shopify_auth.dart';
// import '../../../utils/dialogs.dart';

// import '../../../database/cart.dart';
// import '../../../database/databases.dart';
// import '../../../shopify_graphql/models/src/checkout/checkout.dart';
// import '../../../shopify_graphql/models/src/checkout/line_item/line_item.dart';
// import '../../../shopify_graphql/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
// import '../../../shopify_graphql/models/src/product/product_variant/product_variant.dart';
// import '../../../shopify_graphql/models/src/shopify_user/shopify_user.dart';
// import '../../../shopify_graphql/shopify/src/shopify_checkout.dart';
// import '../../../utils/session.dart';
// import '../../../globels.dart' as globels;
// part 'checkout_screen_event.dart';

// part 'checkout_screen_state.dart';

// class CheckoutScreenBloc
//     extends Bloc<CheckoutScreenEvent, CheckoutScreenState> {
//   CheckoutScreenBloc() : super(CheckoutScreenInitial()) {
//     on<CheckoutScreenEvent>((event, emit) {
//       // TODO: implement event handler
//     });

//     on<CheckoutScreenAddressChangeEvent>((event, emit) async {
//       shippingAddresss = event.address;
// await ShopifyCheckout.instance.shippingAddressUpdate(checkouts.id!, event.address);

//       emit(CheckoutScreenAddressFound(
//           shippingAddresss, billingAddress, checkouts));
//     });
//     on<CheckoutScreenAddressChangeBillingEvent>((event, emit) {
//       billingAddress = event.address;
//       emit(CheckoutScreenAddressFound(
//           shippingAddresss, billingAddress, checkouts));
//     });

//     on<CheckoutScreenSameAddressEvent>((event, emit) {
//       billingAddress = shippingAddresss;
//       emit(CheckoutScreenAddressFound(
//           shippingAddresss, billingAddress, checkouts));
//     });

//     on<CheckoutScreenApplyOfferEvent>((event, emit) {
//       ApplyOfferCode(event.code);
//     });
//     on<CheckoutScreenRemoveOfferEvent>((event, emit) {
//       RemoveOfferCode(event.code);
//     });
//     LoadData();
//   }

//   CreateCheckout(bool withaddress) async {
//     List<Cart> list = await DataBaseUtil.getCartList();

//     if (list.isNotEmpty) {
//       List<LineItem> item = [];
//       for (Cart c in list) {
//         ProductVariant pv = c.GetVariant();
//         ProductVariantCheckout vv = ProductVariantCheckout();
//         vv.title = pv.title;
//         vv.priceV2 = pv.price;
//         vv.image = pv.image;
//         vv.sku = pv.sku;
//         vv.weight = pv.weight;
//         vv.weightUnit = pv.weightUnit;
//         vv.id = pv.id;
//         vv.compareAtPrice = pv.compareAtPrice;
//         vv.quantityAvailable = pv.quantityAvailable;
//         vv.availableForSale = pv.availableForSale;
//         vv.requiresShipping = pv.requiresShipping;

//         LineItem va = LineItem(
//             title: c.title,
//             id: c.id.toString(),
//             variantId: c.variantId,
//             quantity: c.quantity,
//             variant: vv);

//         item.add(va);
//       }
//       if (withaddress) {
//         checkouts = await ShopifyCheckout.instance.createCheckout(
//             lineItems: item,
//             shippingAddress: shippingAddresss,
//             email: user!.email);
//       } else {
//         checkouts = await ShopifyCheckout.instance
//             .checkoutCreateWithoutShippingAddress(
//                 lineItems: item, email: user!.email);
//       }

//       print(checkouts.id);

//       emit(CheckoutScreenAddressFound(
//           shippingAddresss, billingAddress, checkouts));
//     }
//   }

//   Address? shippingAddresss;
//   Address? billingAddress;
//   late ShopifyUser? user;
//   late Checkout checkouts = Checkout();
// bool data=false;
//   LoadData() async {
//     var cdd = Session.getAccessToken();
//     user = await ShopifyAuth.instance.currentUser();

//     if (user!.address!.addressList!.isEmpty) {
//       emit(CheckoutScreenShippinAddressNotFound());
//       CreateCheckout(false);
//     } else {
//       shippingAddresss = user!.address!.addressList!.first;
//       billingAddress = user!.address!.addressList!.first;

//       CreateCheckout(true);
//     }
//   }

//   ChangeAddressShipping() async {
//     checkouts = await ShopifyCheckout.instance
//         .shippingAddressUpdate(checkouts.id.toString(), shippingAddresss!);
//     emit(CheckoutScreenAddressFound(
//         shippingAddresss, billingAddress, checkouts));
//   }

//   ApplyOfferCode(String code) async {
//     try{
//       emit(CheckoutScreenLoadingDialog());
//     checkouts = await ShopifyCheckout.instance
//         .checkoutDiscountCodeApply(checkouts.id.toString(), code);
    
//     }catch(e){
//       e.toString();
//       emit(CheckoutError("Offer Code invalid"));
//     }
//     emit(CheckoutScreenAddressFound(
//         shippingAddresss, billingAddress, checkouts));
//   }


//   RemoveOfferCode(String code) async {
//     try{
//       emit(CheckoutScreenLoadingDialog());
//     await ShopifyCheckout.instance
//         .checkoutDiscountCodeRemove(checkouts.id.toString());

//     checkouts = await ShopifyCheckout.instance
//         .getCheckoutQuery(checkouts.id.toString());
//     emit(CheckoutScreenAddressFound(
//         shippingAddresss, billingAddress, checkouts));
//     }catch(e){}
//   }
//   getDiscountAmount()
//   {
//     double amount=0.0;
//     if(checkouts.lineItems!=null){
//     var x=checkouts.lineItems!.forEach((element) {

// element.discountAllocations!.forEach((e)  { 
        
      
//       amount= amount + e.allocatedAmount!.amount!.toDouble();

//       });
//      });
//     }
     
//      if(amount == 0)
//      {
//       return globels.shop.moneyFormat!.replaceAll("{{amount}}", "0.0"); 
//      }
     
    
//     return globels.shop.moneyFormat!.replaceAll("{{amount}}", "-"+amount.toString()) ;
//   }
// }
