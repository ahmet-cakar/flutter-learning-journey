import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: FirstScreen(
          items: List<ToDo>.generate(
            50,
            (e) => ToDo(
              title: "Todo $e",
              description: "Todo description in second Page-$e",
            ),
          ),
        ),
      ),
    ),
  );
}

class FirstScreen extends StatelessWidget {
  final List<ToDo> items;

  const FirstScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondScreen();
                    },
                    settings: RouteSettings(arguments: items[index]),
                  ),
                );
              },
              title: Text(
                items[index].title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)?.settings.arguments as ToDo;
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        title: Text(
          todo.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        subtitle: Text(
          todo.description,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}

class ToDo {
  final String title;
  final String description;

  ToDo({required this.title, required this.description});
}



/*

 WHİLE SENDİNG DATA USİNG CONSTRUCTER



import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: FirstScreen(
          items: List<ToDo>.generate(
            50,
            (e) => ToDo(
              title: "Todo $e",
              description: "Todo description in second Page-$e",
            ),
          ),
        ),
      ),
    ),
  );
}

class FirstScreen extends StatelessWidget {
  final List<ToDo> items;

  const FirstScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondScreen(item: items[index]);
                    },
                  ),
                );
              },
              child: Text(
                items[index].title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final ToDo item;
  const SecondScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        title: Text(
          item.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        subtitle: Text(
          item.description,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}

class ToDo {
  final String title;
  final String description;

  ToDo({required this.title, required this.description});
}




 */