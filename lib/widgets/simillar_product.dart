import 'package:flutter/material.dart';
import '../widgets/simillar_single_product.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Hills 2",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext ctx, int index) {
        return SimillarSingleProduct(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldPrice: productList[index]['old_price'],
          productPrice: productList[index]['price'],
        );
      },
    );
  }
}