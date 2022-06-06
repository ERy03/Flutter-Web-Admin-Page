import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/helpers/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: (() {
                key.currentState?.openDrawer();
              }),
              icon: const Icon(Icons.menu),
            ),
      elevation: 0,
      // backgroundColor: Colors.white,
    );
