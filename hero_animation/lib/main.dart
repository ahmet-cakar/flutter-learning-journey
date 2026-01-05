import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Screen1()));
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 1")),
      body: GestureDetector(
        child: Hero(tag: "RandomImage", child: Image.network("https://picsum.photos/200/300")),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Screen2();
              },
            ),
          );
        },
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(tag: "RandomImage", child: Image.network("https://picsum.photos/200/300")),
        ),
      ),
    );
  }
}
