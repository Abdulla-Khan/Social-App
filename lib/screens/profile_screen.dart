import 'package:flutter/material.dart';
import 'package:social_app/models/user_models.dart';
import 'package:social_app/widgets/Custom_Drawer.dart';
import 'package:social_app/widgets/posts.dart';
import 'package:social_app/widgets/profile_clipper.dart';

class Profile extends StatefulWidget {
  const Profile(this.user);
  final User user;
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  late PageController _yourFavorPageController;
  late PageController _yourPostsPageController;

  @override
  void initState() {
    super.initState();
    _yourFavorPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);

    _yourPostsPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: const customDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: ProfileClipper(),
                  child: Image(
                    height: 300,
                    width: double.infinity,
                    image: AssetImage(widget.user.backgroundImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => _scaffoldkey.currentState!.openDrawer(),
                    iconSize: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image(
                        height: 120,
                        width: 120,
                        image: AssetImage(
                          widget.user.profileImageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.user.name,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Following",
                      style: TextStyle(fontSize: 22, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.user.following.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(fontSize: 22, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.user.followers.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Ppost(
                pagecontroller: _yourPostsPageController,
                title: "Your Posts",
                past: widget.user.posts),
            Ppost(
                pagecontroller: _yourFavorPageController,
                title: "Your Posts",
                past: widget.user.posts),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
