// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/data/data.dart';
import 'package:social_app/screens/home_screen.dart';
import 'package:social_app/screens/login.dart';
import 'package:social_app/screens/profile_screen.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                            image: AssetImage(
                              currentUser.profileImageUrl,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Home"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Map"),
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  )),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("Chat"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("My Profile"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Profile(currentUser),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.directions_run),
                title: Text("LogOut"),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
