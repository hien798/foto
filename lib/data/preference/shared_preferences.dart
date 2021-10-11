import 'package:shared_preferences/shared_preferences.dart';
class StorageManager {
  static const String cartItemsKey = 'cart_items_key';

  static final StorageManager _instance = StorageManager._ctor();
  factory StorageManager() {
    return _instance;
  }

  StorageManager._ctor();

  late SharedPreferences _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  String get cartItems => _prefs.getString(cartItemsKey) ?? '';

  set cartItems(String value) {
    _prefs.setString(cartItemsKey, value);
  }
   void clearCart(){
    cartItems='';
  }


}