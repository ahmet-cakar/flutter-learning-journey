import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Horizontal list";

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ScrollConfiguration( //Altındaki scroll davranışını özelleştir
            behavior: const MaterialScrollBehavior().copyWith( //var olan davranışı değiştir 
              dragDevices: {...PointerDeviceKind.values}, //Desktop ve Web için kaydırma yap 
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final color in Colors.primaries) //primary renkler
                  Container(width: 160, color: color),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
