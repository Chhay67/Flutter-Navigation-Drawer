import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.title,
      required this.onTap,
      required this.drawerIndex,
      required this.selectedIndex});
  final String title;
  final Function() onTap;
  final int drawerIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: drawerIndex == selectedIndex
          ? Colors.grey.withOpacity(0.4)
          : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(title),
        ),
      ),
    );
  }
}