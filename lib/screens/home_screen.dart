import 'package:flutter/material.dart';
import 'package:social_app/data/data.dart';
import 'package:social_app/widgets/following.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 18,
          ),
          tabs: const [
            Tab(
              text: "Trending",
            ),
            Tab(
              text: "Latest",
            ),
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          FollowingUser(),
        ],
      ),
    );
  }
}
