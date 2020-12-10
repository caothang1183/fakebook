import 'package:fakebook/data/fake_data.dart';
import 'package:fakebook/models/models.dart';
import 'package:fakebook/screens/home/containers/home_containers.dart';
import 'package:fakebook/screens/home/widgets/home_wigets.dart';
import 'package:flutter/material.dart';

class HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeScreenMobile({
    Key key,
    @required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
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
    );
  }
}
