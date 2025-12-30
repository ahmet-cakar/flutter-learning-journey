import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstScreen(),
        "/second": (context) => const SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Go to First Screen"),
        ),
      ),
    );
  }
}
