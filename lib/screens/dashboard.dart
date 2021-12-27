import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_structure/screens/catogory.dart';
import 'package:sample_structure/screens/home.dart';
import 'package:sample_structure/screens/orders.dart';
import 'package:sample_structure/screens/product.dart';
import 'package:sample_structure/screens/product_form.dart';
import 'package:sample_structure/screens/sales.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // variables can be declared here
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Admin DashBoard'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.people),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              debugPrint('Home card tapped');
            },
          ),
          // add more IconButton
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              shadowColor: Colors.black,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Products tile');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Product(
                              title: ' Product',
                            )),
                  );
                },
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.food_bank,
                        size: 100,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: Text(
                          "Products",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Raleway"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              shadowColor: Colors.black,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Products tile');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Orders(
                              title: 'Orders',
                            )),
                  );
                },
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.list_alt_rounded,
                        size: 100,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: Text(
                          "Orders",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Raleway"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              shadowColor: Colors.black,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Products tile');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Catogory(
                              title: 'Catogory',
                            )),
                  );
                },
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.category,
                        size: 100,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: Text(
                          "Catogory",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Raleway"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              shadowColor: Colors.black,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Sales tile');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Sales(
                              title: 'Product',
                            )),
                  );
                },
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.trending_up,
                        size: 100,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: Text(
                          "sales",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Raleway"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        tooltip: 'Add Menu',
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
