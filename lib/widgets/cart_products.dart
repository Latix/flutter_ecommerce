import 'package:flutter/material.dart';
import './cart_single_product.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var cartProducts = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartProducts.length,
      itemBuilder: (context, index) => CartSingleProduct(
        productName: cartProducts[index]['name'],
        productPicture: cartProducts[index]['picture'],
        productPrice: cartProducts[index]['price'],
        productSize: cartProducts[index]['size'],
        productColor: cartProducts[index]['color'],
        productQuantity: cartProducts[index]['quantity'],
      ),
    );
  }
}
