import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Egna sidoimporter
import 'package:flutterapp/components/horizontal_listView.dart';
import 'package:flutterapp/components/products.dart';
import 'package:flutterapp/pages/Shopping_Cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        // Bildspel Högs upp på appen
        images: [
          AssetImage('images/w1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
      //animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    //FÄRGEN LÄNGS UPP PÅ APPEN SAMT NAMNET ÅP APPLIKATIONEN
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text('Bargainapp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                //SEARCHH ICON
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                //KUNDKORG ICON
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: () { //GENOM ATT KLICKA PÅ KUNDVAGENEN SÅ KOMMER MAN IN I EN NY SIDA DÄR KUNDEN KAN SE VALDA PRODUKTER.
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Shopping_cart()) );
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            //TEST ANVÄNDRAE
            new UserAccountsDrawerHeader(
              accountName: Text('Aryan'),
              accountEmail: Text('testmail@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black),
            ),
            // body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Start Page',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(Icons.home, color: Colors.black),
              ),
            ),

            // DETALJERADE FLIKER FÖR VARJE KUND

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Account',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(Icons.person, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Orders',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(Icons.add_shopping_cart, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: () { //GÖR DET MÖJLIGT ATT KLCKA PÅ SHOPPING_CART I MENYSIDAN FÖR ATT KOMMA TILL VALDA PRODUKTER PÅ sHOPPING_CART SIDAN.
                Navigator.push(context, MaterialPageRoute(builder: (conetxt) => new Shopping_cart()));
              },
              child: ListTile(
                title: Text(
                  'Shoppingcart',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(Icons.shopping_basket, color: Colors.green),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Favorites',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(Icons.brightness_high, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(Icons.hdr_strong, color: Colors.black),
              ),
            ),
          ],
        ),
      ),

      // PRODUKT KATEGORIER BÖRJAR HÄR
      body: new ListView(
        children: <Widget> [
          //Image carousel begins here
          image_carousel,
          // Padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

        // Horizontal List view begins here
          HorizontalList(),

          //grid view
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          Container (
            height: 320.0,
             child: Products(),
         ),

           ],
      ),
    );
  }
}

