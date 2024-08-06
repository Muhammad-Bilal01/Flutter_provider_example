import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/example_one/counter_provider.dart';
import 'package:provider_example/example_one/screen_one.dart';
import 'package:provider_example/example_two/cart_provider.dart';
import 'package:provider_example/example_two/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ProductScreen(),
      ),
    );
  }
}
