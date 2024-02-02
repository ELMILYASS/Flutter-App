import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text("Home"),
      ),
    );
  }
}
