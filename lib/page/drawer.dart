import 'package:drawer_demo/provider/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/drawer_item.dart';

class DrawerNavagation extends StatelessWidget {
  const DrawerNavagation({super.key});

  @override
  Widget build(BuildContext context) {
    final drawer = context.watch<DrawerProvider>();
    return Drawer(
      child: ListView(
        children: [
          //DrawerHeader
          DrawerHeader(
              child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                image:
                    DecorationImage(image: AssetImage('assets/profile.jpg'))),
          )),
          //DrawerItem
          DrawerItem(
            title: 'DashBoard',
            onTap: () {
              context.read<DrawerProvider>().onChangedIndex(0);
              Navigator.of(context).pop();
            },
            drawerIndex: 0,
            selectedIndex: drawer.selectedIndex,
          ),
          DrawerItem(
            title: 'Service',
            onTap: () {
              context.read<DrawerProvider>().onChangedIndex(1);
              Navigator.of(context).pop();
            },
            drawerIndex: 1,
            selectedIndex: drawer.selectedIndex,
          ),
          DrawerItem(
            title: 'Project',
            onTap: () {
              context.read<DrawerProvider>().onChangedIndex(2);
              Navigator.of(context).pop();
            },
            drawerIndex: 2,
            selectedIndex: drawer.selectedIndex,
          ),
        ],
      ),
    );
  }
}
