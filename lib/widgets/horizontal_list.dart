import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List catItems = [
    ['images/cats/tshirt.png', 'Shirt'],
    ['images/cats/accessories.png', 'Accessories'],
    ['images/cats/dress.png', 'Dress'],
    ['images/cats/formal.png', 'Formal'],
    ['images/cats/informal.png', 'Informal'],
    ['images/cats/jeans.png', 'Jeans'],
    ['images/cats/shoe.png', 'Shoe'],
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
            image_location: catItems[index][0],
            image_caption: catItems[index][1],
          );
        },
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
