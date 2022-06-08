import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/helpers/local_navigator.dart';
import 'package:flutter_web_admin_page/widgets/side_menu.dart';
import 'helpers/responsiveness.dart';
import 'widgets/large_screen.dart';
import 'widgets/medium_screen.dart';
import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: const LargeScreen(),
        mediumScreen: const MediumScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: localNavigator(),
        ),
      ),
    );
  }
}
