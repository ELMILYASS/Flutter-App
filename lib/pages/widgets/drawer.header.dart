import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Theme.of(context).primaryColor])),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/flutter.png"),
            radius: 40,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/flutter.png"),
            radius: 30,
          )
        ],
      ),
    );
  }
}
