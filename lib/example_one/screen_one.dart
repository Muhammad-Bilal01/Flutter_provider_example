import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/example_one/counter_provider.dart';
import 'package:provider_example/example_one/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    CounterProvider counter = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${counter.count}",
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ScreenTwo(),
                ));
              },
              child: const Text("Next Screen"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increaseCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
