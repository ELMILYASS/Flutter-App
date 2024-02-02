import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/drawer.header.dart';
import 'package:flutter_app/pages/widgets/drawer.item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        const MyDrawerHeader(),
        MyDrawerItem(
            title: 'Home',
            itemIcon:
                Icon(Icons.home, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            }),
        const Divider(
          color: Colors.black,
          height: 8,
        ),
        MyDrawerItem(
            title: 'Counter',
            itemIcon:
                Icon(Icons.calculate, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            }),
        const Divider(
          color: Colors.black,
          height: 8,
        ),
        MyDrawerItem(
            title: 'Products',
            itemIcon: Icon(Icons.cases_rounded,
                color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            }),
        const Divider(
          color: Colors.black,
          height: 8,
        ),
      ]),
    );
  }
}
