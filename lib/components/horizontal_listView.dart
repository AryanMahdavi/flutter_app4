import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              image_location: 'images/cats/dress.png',
              image_caption: 'Dress',
            ),

            Category(
              image_location: 'images/cats/tshirt.png',
              image_caption: 'T_shirt',
            ),

            Category(
              image_location: 'images/cats/accessories.png',
              image_caption: 'Accessories',
            ),

            Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'Formal',
            ),

            Category(
              image_location: 'images/cats/informal.png',
              image_caption: 'Informal',
            ),

            Category(
              image_location: 'images/cats/jeans.png',
              image_caption: 'Jeans',
            ),

            Category(
              image_location: 'images/cats/shoe.png',
              image_caption: 'Shoes',
            ),
          ],
        )
    );
  }
}

class Category extends StatelessWidget {
  // Instans variables
  final String image_location;
  final String image_caption;

  //constrocter
  Category({ // en klass som heter kategori, och variabler inuti klassen
    this.image_location,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      // InkWell gör en category klickbar. den får fubktionalitetten av en kanpp.
      child: InkWell(onTap: () {},
        child: Container(
          width: 100.0,
        child: ListTile(
        title: Image.asset(image_location,
        width: 100.0,
        height: 80.0,
      ),
      subtitle: Container( //för att centrera text
        alignment: Alignment.topCenter,
        child: Text(image_caption),
      )
    ),
    ),
      ),
    );
  }
}

