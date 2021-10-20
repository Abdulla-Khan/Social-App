import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  void init() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          "Abdullah",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 34,
            fontWeight: FontWeight.bold,
            letterSpacing: 10,
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 3,
          controller: tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 18,
          ),
          tabs: [
            Tab(
              text: "Trending",
            ),
            Tab(
              text: "Latest",
            ),
          ],
        ),
      ),
    );
  }
}
