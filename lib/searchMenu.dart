import 'dart:developer';
import 'dart:html';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/model/productModel.dart';
import 'package:flutter_app1/providers/db_provider.dart';

class SearchMenu extends StatefulWidget {
  @override
  _SearchMenuState createState() => _SearchMenuState();
}

class _SearchMenuState extends State<SearchMenu> {
  List<Product> productList;

  //setting product list as a new instance of class is created
  _SearchMenuState(){
    this.setAllProducts();
  }

  //method to get all product from database
  void setAllProducts() async{
    this.productList= await DBProvider.db.getAllProducts();
  }

  Future<List<Product>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Product();
    });
  }

  // method to create card for each product
  Widget productTemplate(product){
    return Card(
      margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child:Container(
                padding: EdgeInsets.all(5.0),
             child: Image.network(product.LooksImageUrl),
              )
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Text(
                  '$product.Option',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.grey[600],
                      ),
                ),
                SizedBox(height: 2.0),
                Text(
                  '$product.QRCode',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey
                  ),
                ),
                SizedBox(height: 1.0),
                Text(
                  '$product.MRP',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            flex: 1,
            child: Column(
              children: [Text(
                '$product.EAN',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.grey[600]
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchBar(

            ),
          ),
        ),
          Column(
          children: productList.map((product) => Text('')).toList(),
          )
      ],
      )
    );
  }
}
