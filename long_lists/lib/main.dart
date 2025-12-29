import 'package:flutter/material.dart';

void main() {
  runApp(LongList(list: List<String>.generate(1000, (i) => "Item $i")));
}

class LongList extends StatelessWidget {
  const LongList({super.key, required this.list});
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: list.length,
          prototypeItem: ListTile(leading: Text("test-1")),
          itemBuilder: (context, index) {
            return ListTile(leading: Text(list[index].toString()));
          },
        ),
      ),
    );
  }
}
