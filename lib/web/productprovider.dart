import 'package:flutter/cupertino.dart';
import '../model/Products.dart';
import 'apiservice.dart';

class ProductProvider with ChangeNotifier{
  List<Products>_plist=[];

  List<Products> get plist => _plist;
  ApiService apiService=ApiService();
  Future<void> Fetch() async {
    _plist=(await apiService.getProducts())!;
    notifyListeners();

  }

  void fetchProducts(String value) {}
}