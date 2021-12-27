import 'package:flutter/material.dart';
import 'package:sample_structure/screens/catogory_form.dart';

import 'dashboard.dart';

class Catogory extends StatefulWidget {
  final String title;

  const Catogory({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _CatogoryState createState() => _CatogoryState();
}

class _CatogoryState extends State<Catogory> {
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
            const Text("Catogory Page"),
            ElevatedButton(
                child: const Text("Click on Me"), //click me button
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Catogoryform()),
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
