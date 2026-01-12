import 'package:catalog_2_cart_state_exm1/cart_model.dart';
import 'package:catalog_2_cart_state_exm1/route_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return CartModel();
      },
      child: MaterialApp(home: RouteScreen()),
    ),
  );
}
