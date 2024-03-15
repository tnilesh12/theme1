// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../../../globels.dart' as globals;

// import '../../../database/databases.dart';
// import '../../../utils/session.dart';

// import '../../../database/cart.dart';

// part 'cart_screen_event.dart';

// part 'cart_screen_state.dart';

// class CartScreenBloc extends Bloc<CartScreenEvent, CartScreenState> {
//   CartScreenBloc() : super(CartScreenInitial()) {
//     on<CartScreenEvent>((event, emit) {
//       // TODO: implement event handler
//     });

//     on<DeleteCartItem>((event, emit) async {
//       await DataBaseUtil.deleteCart(event.cart);
//        totalAmount=0;
//       LoadData();
//     });

//     on<UpdateCartItem>((event, emit) async {
//       event.cart.quantity = event.count;
//       await DataBaseUtil.updateCart(event.cart);
//       totalAmount=0;
//       LoadData();
//     });

//     LoadData();
//   }

//   double totalAmount = 0;
//   String formatedPrice = "";

//   LoadData() async {
//     emit(CartScreenLoading());
//     List<Cart> list = await DataBaseUtil.getCartList();
//     if (list.isNotEmpty) {
//       for (Cart c in list) {
//         totalAmount = totalAmount + (c.GetVariant().price!.amount! * c.quantity) ?? 0;
//       }

//       formatedPrice = globals.shop.moneyFormat!
//           .replaceAll("{{amount}}", totalAmount.toStringAsFixed(2))
//           .toString();

//       emit(CartScreenLoaded(list));
//     } else {
//       emit(CartScreenNoData());
//     }
//   }
// }
