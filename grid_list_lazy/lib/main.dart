import 'package:flutter/material.dart';

void main() {
  runApp(GridListLazy());
}

class GridListLazy extends StatelessWidget {
  const GridListLazy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
          ),
          itemBuilder: (context, index) {
            return Center(child: Text("data-$index"));
          },
        ),
      ),
    );
  }
}
