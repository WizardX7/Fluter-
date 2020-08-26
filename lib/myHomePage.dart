import 'package:flutter/material.dart';
import 'package:flutter_app1/providers/product_api_provider.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ProductApiProvider productApiProvider= ProductApiProvider();
  int counter;
  @override
  Widget build(BuildContext context) {
    this.counter=productApiProvider.getProductCount();
    productApiProvider.getAllProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Management App',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            'Currently having product:',
            style: Theme.of(context).textTheme.headline6,
          ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline5,
            ),
          FlatButton(
            onPressed: (){
              setState(() {
                counter=productApiProvider.getProductCount();
              });
            },
            child: Icon(Icons.refresh),
          ),
            SizedBox(height: 25.0,),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/searchMenu');
              },
              child: Text('Continue Browsing..'),
            ),
      ],
      ),
      )

    );
  }
}
