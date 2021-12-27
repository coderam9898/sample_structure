import 'package:flutter/material.dart';
import 'package:sample_structure/screens/dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
          child: ElevatedButton(
              child: const Text("Click on Me"), //click me button
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Grid()),
                );
              })),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
          child: ElevatedButton(
              child: const Text("Go Back"), //go back button
              onPressed: () {
                Navigator.pop(context);
              })),
    );
  }
}
