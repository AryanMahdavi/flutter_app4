// =====15====

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  // constructor
  ProductDetails({
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // _ProductDetailsState is a subclass of the Stateclass
  @override
  Widget build(BuildContext context) {
    // 16======
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text('BargainApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white10,
                child: ListTile(
                    leading: new Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    //, // leading will be at the left side in difference with title(often in the middle of the page).
                    title: new Row(
                      children: <Widget>[ //hej
                        Expanded(
                          // ========KOM IHÅG ATT BYTA UT VALUTAN FRÅN DOLLAR TILL SVENSKA KRONOR======
                          child: new Text(
                            "\$${widget.product_detail_old_price}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          // ========KOM IHÅG ATT BYTA UT VALUTAN FRÅN DOLLAR TILL SVENSKA KRONOR======
                          child: new Text(
                            "\$${widget.product_detail_new_price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),

          Row(
            children: <Widget>[
              // The size Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    // Button detalijer
                    showDialog(context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("CHoose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context); // Ger funktion  till close kanppen
                          },
                          child: new Text("Close"), // Close knappen
                          )
                        ],
                      );
                    });
                  },

                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),


              // The Color Button
              Expanded(
                child: MaterialButton(

                  onPressed: () {
                    // Button detalijer
                    showDialog(context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("colors"),
                            content: new Text("CHoose a color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context); // Ger funktion  till close kanppen
                              },
                                child: new Text("Close"), // Close knappen
                              )
                            ],
                          );
                        });
                  },

                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),


              // The Quantity Button
              Expanded(
                child: MaterialButton(

                  onPressed: () {
                    // Button detalijer
                    showDialog(context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Guantity"),
                            content: new Text("CHoose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context); // Ger funktion  till close kanppen
                              },
                                child: new Text("Close"), // Close knappen
                              )
                            ],
                          );
                        });
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              ],
          ),


          // The "KÖP" button
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text('Köp'),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: () {}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: () {}),
            ],
          ),

          new ListTile(
            title: new Text("Produkt detsils"),
          ),

      ],
      ),
    );
  }
}
