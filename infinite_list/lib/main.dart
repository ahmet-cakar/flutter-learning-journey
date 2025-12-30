import 'package:flutter/material.dart';

void main() {
  runApp(InfiniteList());
}

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  late final ScrollController _controller;
  List<String> list = [];
  bool isLoading = false;

  @override
  void initState() {
    list = List<String>.generate(20, (i) => "Item-$i");
    _controller = ScrollController();
    _controller.addListener(() {
      final reachedEnd =
          _controller.position.pixels >=
          _controller.position.maxScrollExtent - 200;
      if (reachedEnd && !isLoading) {
        _addNewItems();
      } 
    });

    super.initState();
  }

  void _addNewItems() async {
    setState(() => isLoading = true);

    await Future.delayed(Duration(milliseconds: 2000));
    var newItems = List<String>.generate(20, (e) => "Item-${e + list.length}");

    setState(() {
      list.addAll(newItems);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          controller: _controller,
          itemCount: list.length + 1,
          itemBuilder: (context, index) {
            if (list.length == index) {
              return isLoading
                  ? Center(child: CircularProgressIndicator())
                  : SizedBox.shrink();
            }

            return ListTile(title: Text(list[index]));
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
