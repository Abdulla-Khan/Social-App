import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/models/post_model.dart';

class Ppost extends StatelessWidget {
  final PageController pagecontroller;
  final String title;
  final List<Post> past;
  // ignore: use_key_in_widget_constructors
  const Ppost({
    required this.pagecontroller,
    required this.title,
    required this.past,
  });
  _buildPost(BuildContext context, index) {
    Post post = past[index];
    return AnimatedBuilder(
      animation: pagecontroller,
      builder: (BuildContext context, widget) {
        double value = 1;
        if (pagecontroller.position.haveDimensions) {
          value = pagecontroller.page! - index;
          value = (1 - (value.abs() * 0.25).clamp(0, 1));
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400,
            child: widget,
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                fit: BoxFit.cover,
                height: 400,
                width: 300,
                image: AssetImage(post.imageUrl),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              height: 110,
              decoration: const BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    post.location,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            post.likes.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.comment,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            post.comments.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        Container(
          height: 400,
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: pagecontroller,
            itemCount: past.length,
            itemBuilder: (BuildContext context, index) {
              return _buildPost(context, index);
            },
          ),
        ),
      ],
    );
  }
}
