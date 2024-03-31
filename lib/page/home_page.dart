import 'package:drawer_demo/page/dashboard_page.dart';
import 'package:drawer_demo/page/project_page.dart';
import 'package:drawer_demo/page/service_page.dart';
import 'package:drawer_demo/provider/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final List<Widget> pageOption = const [
    DashBoardPage(),
    ServicePage(),
    ProjectPage(),
  ];

  final List<Widget> titleOption = const [
    Text('DashBoard'),
    Text('Service'),
    Text('Project'),
  ];

  @override
  Widget build(BuildContext context) {
    final drawer = context.watch<DrawerProvider>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerNavagation(),
      appBar: AppBar(
        title: titleOption[drawer.selectedIndex],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: pageOption[drawer.selectedIndex],
    );
  }
}
