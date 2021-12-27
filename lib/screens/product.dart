import 'package:flutter/material.dart';
import 'package:sample_structure/screens/product_form.dart';

import 'dashboard.dart';

class Product extends StatefulWidget {
  final String title;

  const Product({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [for (var i in text) Card(child: Text(i.toString()))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductForm()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
