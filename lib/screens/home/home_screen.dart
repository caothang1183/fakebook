import 'package:fakebook/data/fake_data.dart';
import 'package:fakebook/models/models.dart';
import 'package:fakebook/screens/home/containers/home_containers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeSliverAppBar(),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currentUser: currentUser,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10, bottom: 5.0),
            sliver: SliverToBoxAdapter(
              child: RoomsContainer(
                onlineUsers: onlineUsers,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
            sliver: SliverToBoxAdapter(
              child: StoriesContainer(
                currentUser: currentUser,
                stories: stories,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length,
            ),
          )
        ],
      ),
    );
  }
}
