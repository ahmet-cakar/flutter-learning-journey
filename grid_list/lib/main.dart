import 'package:flutter/material.dart';

void main() {
  runApp(GridList());
}

class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          crossAxisSpacing: 1,
          crossAxisCount: 2,

          children: List.generate(20, (i) => Center(child: Text("item-$i"))),
        ),
      ),
    );
  }
}
