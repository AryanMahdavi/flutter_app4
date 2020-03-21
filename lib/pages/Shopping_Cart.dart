import 'package:flutter/material.dart';


class Shopping_cart extends StatefulWidget {
  @override
  _Shopping_cartState createState() => _Shopping_cartState();
}

class _Shopping_cartState extends State<Shopping_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text('Shoppingcart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                //SEARCHH ICON
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
// SHOPING_CART SIDAN, TOTAL AMOUNT FUNCTION AND CHECK OUT BUTTON
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total amount:"),
              subtitle: new Text("\$230"),
            )),

            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check out", style: TextStyle(color: Colors.white),),
                color: Colors.green,
              ),
            )


          ],
        ),
      ),
    );
  }
}

//COMMIT