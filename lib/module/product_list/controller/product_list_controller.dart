import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../view/product_list_view.dart';

class ProductListController extends GetxController {
  ProductListView? view;
  List products = [];

  @override
  void onInit() async {
    super.onInit();
    String jsonString = await rootBundle.loadString("assets/json/product.json");
    Map obj = jsonDecode(jsonString);
    products = obj["data"];
    update();
  }
}
