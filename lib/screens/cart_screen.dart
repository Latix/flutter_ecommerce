import 'package:flutter/material.dart';
import '../widgets/cart_products.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: InkWell(
          onTap: () => Navigator.of(context).pushNamed('/'),
          child: Text('Cart'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total: "),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
      body: CartProducts(),
    );
  }
}
