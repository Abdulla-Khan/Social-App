class User {
  final String profileimg;

  static List<User> users = [
    User(profileimg: 'asset/user0.jpg'),
    User(profileimg: 'asset/user1.jpg'),
    User(profileimg: 'asset/user2.jpg'),
    User(profileimg: 'asset/user3.jpg'),
    User(profileimg: 'asset/user4.jpg'),
    User(profileimg: 'asset/user5.jpg'),
    User(profileimg: 'asset/user6.jpg'),
  ];

  User({required this.profileimg});
}
