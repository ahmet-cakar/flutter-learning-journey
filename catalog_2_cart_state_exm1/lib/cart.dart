import 'package:catalog_2_cart_state_exm1/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(value.cartItems[index].title),
                      subtitle: Text(value.cartItems[index].description),
                      trailing: Text(value.cartItems[index].price.toString()),
                    );
                  },
                );
              },
            ),
          ),
          const Spacer(),
          Text(
            "Total Price ${Provider.of<CartModel>(context, listen: true).totalPrice().toString()}",
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text("Sepeti Temizle"),
            onPressed: () {
              Provider.of<CartModel>(context, listen: false).removeCartAll();
            },
          ),
        ],
      ),
    );
  }
}
