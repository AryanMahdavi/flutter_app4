// =====13=====

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_List = [
  {
  // creating a key and assign a value for that key
  // so everytime we want to access a specific value, we just use the key
  "name": "Skirt",
  "picture": "images/products/skt1.jpeg",
  "old_price": 300,
  "price": 185,
  },
  {
  // creating a key and assign a value for that key
  "name": "Pants",
  "picture": "images/products/pants2.jpeg",
  "old_price": 100,
  "price": 65,
  },
  {
  // creating a key and assign a value for that key
  "name": "Dress",
  "picture": "images/products/dress1.jpeg",
  "old_price": 1100,
  "price": 625,
  },

{
    "name": "Skrit",
    "picture": "images/products/skt2.jpeg",
    "old_price": 500,
    "price": 349,
},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_List.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_List[index]['name'],
            product_picture: product_List[index]['picture'],
            product_old_price: product_List[index]['old_price'],
            product_price: product_List[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  // putting variables inside the constructor
  Single_product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
       // tag: new Text("Hero7"),
        // MULTIPLE HERO WITH THE SAME TAG NAME WITHIN A SUBTREE, ERROR FIX=======(20)
        tag: product_name,
        child: Material(
          child: InkWell(
            //Load a new pages when user klick on the current page,
            // for ex, choosing an item and klicking on it..
            onTap: () =>Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) =>new ProductDetails(
                  //Loadar en ny sida, i det fallet productDetails sida.
                  //Here passing the values of the product to the product_details_page.

                  product_detail_name: product_name,
                  product_detail_new_price: product_price,
                  product_detail_old_price: product_old_price,
                  product_detail_picture: product_picture,
                ))),
            child: GridTile(
              footer: Container (
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  ),
                  new Text("\$$product_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ],)
              ),
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                )),

          ),
        ),
      ),
    );
  }
}

