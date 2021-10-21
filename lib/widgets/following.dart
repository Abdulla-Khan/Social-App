import 'package:flutter/material.dart';
import 'package:social_app/data/data.dart';
import 'package:social_app/models/user_models.dart';

class FollowingUser extends StatefulWidget {
  const FollowingUser({Key? key}) : super(key: key);

  @override
  _FollowingUserState createState() => _FollowingUserState();
}

class _FollowingUserState extends State<FollowingUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Text(
                'Following',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (BuildContext context, index) {
                  User user = users[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2.0,
                              color: Theme.of(context).primaryColor),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0)
                          ]),
                      margin: const EdgeInsets.all(10),
                      child: ClipOval(
                        child: Image(
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            user.profileImageUrl,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
