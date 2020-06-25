import 'package:flutter/material.dart';
import './screens/product_details_screen.dart';
import './screens/home_page_screen.dart';
import './screens/cart_screen.dart';
import './screens/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
      ),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        CartScreen.routeName: (ctx) => CartScreen(),
      },
    ),
  );
}
