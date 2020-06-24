import 'package:flutter/material.dart';

class CartSingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productSize;
  final productColor;
  final productQuantity;

  CartSingleProduct(
      {this.productName,
      this.productPicture,
      this.productPrice,
      this.productSize,
      this.productColor,
      this.productQuantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          productPicture,
          width: 100.0,
          height: 80.0,
        ),
        title: Text(productName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // =========== This Section For Product Size ===============
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Expanded(
                    child: Text("Size:"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Expanded(
                    child: Text(
                      productSize,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                // =========== This Section For Product Color ===============
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Expanded(
                    child: Text("Color:"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Expanded(
                    child: Text(
                      productColor,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$$productPrice',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
        trailing: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {},),
              Text("$productQuantity"),
              IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {},)
            ],
          ),
        ),
      ),
    );
  }
  // void addQuantity() {
  //   productQuantity += 1;
  // }
}
