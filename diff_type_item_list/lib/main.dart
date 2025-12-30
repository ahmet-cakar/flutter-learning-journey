import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyApp(
          list: List<ListItem>.generate(
            1000,
            (i) => i % 6 == 0
                ? Title(header: "Header $i")
                : Subtitle(head: "Sender $i", body: "Message $i"),
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<ListItem> list;

  const MyApp({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final listItem = list[index];

        return ListTile(
          title: listItem.buildTitle(context),
          subtitle: listItem.buildSubtitle(context),
        );
      },
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class Title implements ListItem {
  final String header;

  Title({required this.header});

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(header, style: Theme.of(context).textTheme.headlineMedium);
  }

  @override
  Widget buildTitle(BuildContext context) {
    return SizedBox.shrink();
  }
}

class Subtitle implements ListItem {
  final String head;
  final String body;

  Subtitle({required this.head, required this.body});

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(head);
  }

  @override
  Widget buildTitle(BuildContext context) {
    return Text(body);
  }
}
