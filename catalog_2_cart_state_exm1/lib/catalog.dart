import 'package:catalog_2_cart_state_exm1/cart_model.dart';
import 'package:catalog_2_cart_state_exm1/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          showDialog(
            context: context,
            builder: (context) => _AddProductToCatalog(),
          );
        },
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(value.items[index].title),
                subtitle: Text(value.items[index].description),
                leading: Text(value.items[index].price.toString()),
                trailing: InkWell(
                  child: Icon(Icons.add),
                  onTap: () {
                    value.addCartItem(value.items[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _AddProductToCatalog extends StatefulWidget {
  @override
  State<_AddProductToCatalog> createState() => _AddProductToCatalogState();
}

class _AddProductToCatalogState extends State<_AddProductToCatalog> {
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("İptal"),
        ),
        ElevatedButton(
          onPressed: () {
            if (idController.text.isEmpty ||
                titleController.text.isEmpty ||
                descriptionController.text.isEmpty ||
                priceController.text.isEmpty) {
              return;
            }
            final product = Product(
              id: int.tryParse(idController.text) ?? 0,
              title: titleController.text,
              description: descriptionController.text,
              price: double.tryParse(priceController.text) ?? 0.0,
            );
            Provider.of<CartModel>(context, listen: false).addItem(product);
            Navigator.of(context).pop();
          },
          child: const Text("Ekle"),
        ),
      ],
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: idController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "ID"),
            ),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Başlık"),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: "Açıklama"),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: "Fiyat"),
            ),
          ],
        ),
      ),
    );
  }
}
