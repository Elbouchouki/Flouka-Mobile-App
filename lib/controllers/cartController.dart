import 'package:flutter_auth/models/cart.dart';
import 'package:flutter_auth/models/produit.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _session = GetStorage();

  // ignore: deprecated_member_use
  var _cartList = List<Cart>().obs;
  var total = 0.0.obs;
  List<Cart> get cartList => _cartList.value;
  void calculateTotal() {
    double t = 0;
    _cartList.value.forEach((cart) {
      t += cart.totalPrice;
    });
    total.value = t;
  }

  @override
  void onInit() {
    _cartList.value = Cart.cartFromJson(_session.read("cartList").toString());
    calculateTotal();
    super.onInit();
  }

  void addProduct(Cart cart) {
    _cartList.add(cart);
    calculateTotal();

    _sessionSave();
  }

  // void deleteProduct(Cart cart) {
  //   _cartList.remove(cart);
  //   calculateTotal();

  //   _sessionSave();
  // }

  void deleteProductByIndex(int index) {
    _cartList.removeAt(index);
    calculateTotal();

    // _cartList.value.removeAt(index);
    _sessionSave();
  }

  void _sessionSave() {
    _session.write("cartList", Cart.cartToJson(_cartList.value));
  }
}
