import 'package:fakebook/common/themes/themes.dart';
import 'package:fakebook/data/fake_data.dart';
import 'package:fakebook/models/models.dart';
import 'package:fakebook/screens/home/containers/home_containers.dart';
import 'package:fakebook/screens/home/widgets/home_wigets.dart';
import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeScreenDesktop({
    Key key,
    @required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: MoreOption(currentUser: currentUser),
          ),
          const Spacer(),
          Container(
              width: ThemeDimens.heightMainContainer,
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    sliver: SliverToBoxAdapter(
                      child: StoriesContainer(
                        currentUser: currentUser,
                        stories: stories,
                      ),
                    ),
                  ),
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
              )),
          const Spacer(),
          Flexible(
            flex: 2,
            child: ContactList(
              users: onlineUsers,
            ),
          ),
        ],
      ),
    );
  }
}
