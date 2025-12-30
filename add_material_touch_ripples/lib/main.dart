import 'package:flutter/material.dart';

void main() {
  runApp(MaterialAppTouchRipples());
}

class MaterialAppTouchRipples extends StatelessWidget {
  const MaterialAppTouchRipples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(child: SnackBarViewerButton()),
      ),
    );
  }
}

class SnackBarViewerButton extends StatelessWidget {
  const SnackBarViewerButton({super.key});
  static const String _textButton = "Click Me and open the SnackBar";
  static const String _textSnackBar = "SnackBar Opened";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(_textButton),
      ),
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(_textSnackBar)));
      },
    );
  }
}


