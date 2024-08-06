import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/example_two/cart_provider.dart';
import 'package:provider_example/example_two/cart_screen.dart';
import 'package:provider_example/example_two/item.dart';
import 'package:provider_example/example_two/item_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const CartScreen();
                },
              ));
            },
          ),
          const SizedBox(width: 5)
        ],
      ),
      body: ListView.builder(
        itemCount: catalog.length,
        itemBuilder: (context, index) {
          return ItemCard(
            btnName: "Add",
            item: catalog[index],
            onPress: () {
              provider.addItem(catalog[index]);
            },
          );
        },
      ),
    );
  }
}
