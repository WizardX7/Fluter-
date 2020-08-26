import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app1/model/productModel.dart';
import 'package:flutter_app1/providers/db_provider.dart';

class ProductApiProvider {
  int ProductCount;

  int getProductCount()=> this.ProductCount;

  Future<List<Product>> getAllProducts() async {
    var url = "https://www.getpostman.com/collections/689b0bc8d604145661f9";
    Response response = await Dio().get(url);
    Map responseFromApi = jsonDecode(response.data);
    this.ProductCount=responseFromApi["ProductCount"];
    responseFromApi.remove("ProductCount");
    return (responseFromApi["Products"] as List).map((product) {
      print('Inserting $product');
      DBProvider.db.createProduct(Product.fromJson(product));
    }).toList();
  }
}
