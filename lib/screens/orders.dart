import 'package:flutter/material.dart';

import 'dashboard.dart';

class Orders extends StatefulWidget {
  final String title;

  const Orders({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Orders Page"),
            ElevatedButton(
                child: const Text("Click on Me"), //click me button
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Grid()),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add product',
        child: const Icon(Icons.add),
      ),
    );
  }
}
