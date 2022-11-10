// import 'package:hive/hive.dart';
// import 'package:hot_buy_india/app/data/models/cart_model.dart';
// import 'package:hot_buy_india/app/data/service/local_storage.dart';

// class LocalStorageRepository extends BaseLocalStorageRepository{
//   String boxName = 'cart';
//   @override
//   Future<Box> OpenBox() async {

//     Box box = await Hive.openBox<CartModel >(boxName);
//     return box;
//   }

//   @override
//   Future<void> appProductToCart(Box box, CartModel product) async {
//     await box.put(product.vendorId, product);
//   }



//   @override
//   List<CartModel> getAllCart(Box box) {
//     // TODO: implement getAllCart
//     return box.values.toList() as List<CartModel>;
//   }

//   @override
//   Future<void> removeProductFromCart(Box box,CartModel product) async {
//   await box.delete(product.vendorId);

//   }
//   @override
//   Future<void> clearCart(Box box) async{
//     // TODO: implement clearCart
//    await box.clear();
//   }

//   @override
//   Future<void> addProduct(Box box, CartModel product) async {
//     // TODO: implement addProduct
//      await box.put(product.vendorId, [
//        //product.
//      ]);
//   }

// }