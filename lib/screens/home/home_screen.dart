import 'package:fakebook/responsive.dart';
import 'package:fakebook/screens/home/platforms/home_screen_desktop.dart';
import 'package:fakebook/screens/home/platforms/platform_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController = TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: HomeScreenMobile(scrollController: _trackingScrollController),
          desktop: HomeScreenDesktop(scrollController: _trackingScrollController),
        )
      ),
    );
  }
}
