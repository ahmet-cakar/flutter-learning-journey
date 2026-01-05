import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: FlowHost()));
}

class FlowHost extends StatelessWidget {
  const FlowHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Navigator(
        initialRoute: "screen1",
        onGenerateRoute: (settings) {
          final page = switch (settings.name) {
            "screen1" => Screen1(),
            "screen2" => Screen2(),
            "done" => Done(),
            _ => Unknown(),
          };
          return MaterialPageRoute(builder: (_) => page, settings: settings);
        },
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("screen2");
        },
        child: Text("Screen1 -> Screen2"),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("done");
        },
        child: Text("Screen2 -> Done"),
      ),
    );
  }
}

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("Done -> Back"),
      ),
    );
  }
}

class Unknown extends StatelessWidget {
  const Unknown({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Unknown route"));
  }
}
