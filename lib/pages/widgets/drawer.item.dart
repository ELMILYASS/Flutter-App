import 'package:flutter/material.dart';

class MyDrawerItem extends StatelessWidget {
  String title;
  Icon itemIcon;
  Function onTap;

  MyDrawerItem({
    super.key,
    required this.title,
    required this.itemIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: Icon(
        Icons.arrow_forward,
        color: Theme.of(context).iconTheme.color,
      ),
      onTap: () => onTap(),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
