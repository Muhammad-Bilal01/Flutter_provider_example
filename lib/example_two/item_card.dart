import 'package:flutter/material.dart';
import 'package:provider_example/example_two/product.dart';

class ItemCard extends StatelessWidget {
  final Product item;
  final void Function()? onPress;
  final String btnName;
  const ItemCard({
    super.key,
    required this.item,
    required this.onPress,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network("https://via.placeholder.com/150"),
      title: Text(item.name),
      subtitle: Text("\$${item.price}"),
      trailing: ElevatedButton(
        onPressed: onPress,
        child: Text(btnName),
      ),
    );
  }
}
