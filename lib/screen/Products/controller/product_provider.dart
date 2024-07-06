import 'dart:convert';
import 'package:flutter/material.dart';

import '../helper/product_api.dart';
import '../modal/product_modal.dart';

class ProductsProvider extends ChangeNotifier {
  bool isLoading = false;
  late ProductModal productModal;

  Future<void> dataFetch() async {
    isLoading = true;
    notifyListeners();

    ProductApi productApi = ProductApi();
    String? data = await productApi.apicalled();

    if (data != null) {
      try {
        Map<String, dynamic> json = jsonDecode(data);
        productModal = ProductModal(json);
      } catch (e) {
        // Handle JSON parsing error
        print('Error parsing JSON: $e');
      }
    } else {
      // Handle null data
      print('Error: No data received');
    }

    isLoading = false;
    notifyListeners();
  }

  ProductsProvider() {
    print('============================== data fetch ========================');
    dataFetch();
  }
}
