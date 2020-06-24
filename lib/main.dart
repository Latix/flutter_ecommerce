import 'package:flutter/material.dart';
import './screens/product_details_screen.dart';
import './widgets/drawer.dart';
import './widgets/image_carousel.dart';
import './widgets/horizontal_list.dart';
import './widgets/products.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
      ),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('FashApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          // Image Carousel
          ImageCarousel(),
          // Padding Widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          // Horizontal List View Begins Here
          HorizontalList(),
          // Padding Widget
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
