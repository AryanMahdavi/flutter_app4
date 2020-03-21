// =====15====
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  // CONSTRUCTOR
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // _ProductDetailsState is a subclass of the Stateclass
  @override
  Widget build(BuildContext context) {
    //=========16========
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: InkWell( //FUNCTION THAT TAKES YOU BACKE TO THE MAIN PAGE FROM, PRODUCT DETAILS PAGE. (20)
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text('Bargainapp')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,
          ),

              onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,
          color: Colors.white,),
              onPressed: (){}),

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
                // leading will be at the left side in difference with title
                // (often in the middle of the page).
                title: new Row(
                  children: <Widget>[
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
                ),
              ),
            ),
            ),
      ),

            Row(
              children: <Widget>[
                //The size Button
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      //Button Details
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context); // Gives function to the close button,
                            },
                              child: new Text("Close"),
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

                // THE COLOR BUTTON
                Expanded(
                  child: MaterialButton(onPressed: (){
                    //BUTTON DETAILS
                    showDialog(context: context,
                    builder: (context){
                    return new AlertDialog(
                      title: new Text("Colors"),
                      content: new Text("Choose a Color"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Close"), //CLOSE BUTTON
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

                // THE QUANTITY BUTTON
                Expanded(
                  child: MaterialButton(onPressed: (){
                    //BUTTON DETAILS
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantiy"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"), //CLOSE BUTTON
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

                // THE BUY BUTTON
                Row(
                  children: <Widget>[
                    Expanded(child: MaterialButton(onPressed: (){},
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy"),
                    ),
                    ),
                    //SHPOING CARD ICON IN PRODUCT DETAILS PAGE.
                    new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.green, onPressed: (){}),
                    //FAVORITE ICON IN PRODUCT DETAILS PAGE.
                    new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),
                  ],
                ),
          Divider(),
                new ListTile(
                  title: new Text("Product details"),
                  subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                      "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation "
                      "ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
                      "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat "
                      "non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.5, 5.0, 5.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.5, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
              // KOM HIÅG ATT SKAPA PRODUKT BRNAD.
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand x"),)
            ],
          ),


          // LÄGG TILL PRDOUKT SKICK
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.5, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New "),)
            ],
          ),
           // THE DIVIDER LINE BETWEEN THE SIMILAR PRODUCT AND "OTEHR ALSO LOOKED FORF.."
        Divider(),
         Padding(
             padding: const EdgeInsets.all(8.0),
              child: new Text("Others  also looked for..."),
         ),

// SIMILAR PRODUCT SECTION
        new Container(
          height: 360.0,
          child: Similar_products(),
        )
              ],
            ),

    );
  }
}
//============20================
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_Single_product(
            product_name: product_List[index]['name'],
            product_picture: product_List[index]['picture'],
            product_old_price: product_List[index]['old_price'],
            product_price: product_List[index]['price'],
          );
        });
  }
}

class Similar_Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  // putting variables inside the constructor
  Similar_Single_product({
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


