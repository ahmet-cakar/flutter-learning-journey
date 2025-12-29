import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Basic List",
      home: Scaffold(
        appBar: AppBar(title: const Text("Basic List")),
        body: const BasicList(),
      ),
    ),
  );
}

class BasicList extends StatelessWidget {
  const BasicList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(leading: Icon(Icons.map), title: Text("Map")),
        const ListTile(leading: Icon(Icons.album), title: Text("Album")),
        const ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
      ],
    );
  }
}
