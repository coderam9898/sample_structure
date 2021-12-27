import 'package:flutter/material.dart';
import 'package:sample_structure/screens/dashboard.dart';

class Catogoryform extends StatelessWidget {
  const Catogoryform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        title: const Text('Add Catogory'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.people),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Grid()),
              );
              debugPrint('Home card tapped');
            },
          ),
          // add more IconButton
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text("Catogory Name"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 4, right: 20),
            child: TextField(
              //obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Catogory Name',
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                icon: const Icon(Icons.save),
                label: const Text("Add Catogory"),
                onPressed: () {},
              ))
        ],
      ),
    );
  }
}
