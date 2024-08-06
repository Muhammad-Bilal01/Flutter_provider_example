import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/example_two/cart_provider.dart';
import 'package:provider_example/example_two/item.dart';
import 'package:provider_example/example_two/item_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Consumer<CartProvider>(
        builder: (context, provider, child) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: provider.cartItem.length,
                itemBuilder: (context, index) {
                  return ItemCard(
                    btnName: "Remove",
                    item: provider.cartItem[index],
                    onPress: () {
                      provider.removeItem(provider.cartItem[index]);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {}, child: Text("Buy \$${provider.price}")),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
