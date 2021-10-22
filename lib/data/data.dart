import 'package:social_app/models/post_model.dart';
import 'package:social_app/models/user_models.dart';

// Posts
final _post0 = Post(
  imageUrl: 'asset/post0.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 456,
      following: 453,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 0',
  location: 'Location 0',
  likes: 102,
  comments: 37,
);
final _post1 = Post(
  imageUrl: 'asset/post1.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 1',
  location: 'Location 1',
  likes: 532,
  comments: 129,
);
final _post2 = Post(
  imageUrl: 'asset/post2.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 2',
  location: 'Location 2',
  likes: 985,
  comments: 213,
);
final _post3 = Post(
  imageUrl: 'asset/post3.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 3',
  location: 'Location 3',
  likes: 402,
  comments: 25,
);
final _post4 = Post(
  imageUrl: 'asset/post4.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 4',
  location: 'Location 4',
  likes: 628,
  comments: 74,
);
final _post5 = Post(
  imageUrl: 'asset/post5.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 5',
  location: 'Location 5',
  likes: 299,
  comments: 28,
);

final posts = [_post0, _post1, _post2, _post3, _post4, _post5];
final users = [
  User(
      profileImageUrl: 'asset/user0.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'asset/user1.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'asset/user2.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'asset/user3.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'asset/user4.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'asset/user5.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'asset/user6.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 937,
      following: 453,
      name: '',
      posts: []),
];
final _yourPosts = [_post1, _post3, _post5];
final _yourFavorites = [_post0, _post2, _post4];

// Current User
final User currentUser = User(
  profileImageUrl: 'asset/user.jpg',
  backgroundImageUrl: 'asset/user_background.jpg',
  name: 'Abdullah',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);
