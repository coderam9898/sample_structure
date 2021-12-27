import 'package:flutter/material.dart';

import 'dashboard.dart';

class Sales extends StatefulWidget {
  final String title;

  const Sales({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
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
            const Text("Sales Page"),
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
