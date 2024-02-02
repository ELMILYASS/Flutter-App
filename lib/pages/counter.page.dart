import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Counter"),
          backgroundColor: Theme.of(context).primaryColor),
      body: Center(child: Text("Counter Value = ${counter} ")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "minus",
            onPressed: () {
              setState(() {
                --counter;
              });
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "plus",
            onPressed: () {
              setState(() {
                ++counter;
              });
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
