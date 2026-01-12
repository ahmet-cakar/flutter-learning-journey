import 'package:catalog_2_cart_state_exm1/cart.dart';
import 'package:catalog_2_cart_state_exm1/catalog.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  int _selectedPageIndex = 0;
  final _pages = [Catalog(), Cart()];

  void _changePage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          _changePage(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Catalog"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
