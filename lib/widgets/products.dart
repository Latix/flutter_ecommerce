import 'package:flutter/material.dart';
import '../widgets/single_product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Dress 2",
      "picture": "images/products/dress2.jpeg",
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
    return Container(
      height: 600,
      child: GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext ctx, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        },
      ),
    );
  }
}
