import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(child: _NextPageButton()),
      ),
    );
  }
}

class _NextPageButton extends StatefulWidget {
  const _NextPageButton();

  @override
  State<_NextPageButton> createState() => _NextPageButtonState();
}

class _NextPageButtonState extends State<_NextPageButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        navigateSecondScreen(context);
      },
      child: Text("Next Page"),
    );
  }

  Future<void> navigateSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute<String>(
        builder: (context) {
          return const SecondScreen();
        },
      ),
    );

    if (!context.mounted) {
      return;
    }

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Okey was sent");
              },
              child: Text("Okey"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Nope was sent");
              },
              child: Text("Nope "),
            ),
          ],
        ),
      ),
    );
  }
}
