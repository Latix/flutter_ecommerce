import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final catItems = [
    {'image_url': 'images/cats/tshirt.png', 'name': 'Shirt'},
    {'image_url': 'images/cats/accessories.png', 'name': 'Accessories'},
    {'image_url': 'images/cats/dress.png', 'name': 'Dress'},
    {'image_url': 'images/cats/formal.png', 'name': 'Formal'},
    {'image_url': 'images/cats/informal.png', 'name': 'Informal'},
    {'image_url': 'images/cats/jeans.png', 'name': 'Jeans'},
    {'image_url': 'images/cats/shoe.png', 'name': 'Shoe'}
  ];
  
  @override
  Widget build(BuildContext context) {
    // catItems.add(['images/cats/jeans.png', 'New']);
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catItems.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Category(
            imageLocation: catItems[index]['image_url'],
            imageCaption: catItems[index]['name'],
          );
        },
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 115.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              alignment: Alignment.topCenter,
              child: Text(imageCaption),
            ),
          ),
        ),
      ),
    );
  }
}
