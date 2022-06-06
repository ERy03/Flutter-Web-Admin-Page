import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';
import 'package:flutter_web_admin_page/helpers/responsiveness.dart';
import 'package:flutter_web_admin_page/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: <Widget>[
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
      title: Row(
        children: <Widget>[
          Visibility(
            child: CustomText(
              text: "管理画面",
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),

          // Settings Button
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: dark.withOpacity(0.7),
          ),

          // Notification Button
          Stack(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
                color: dark.withOpacity(0.7),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: light,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Vertical Divider
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),

          // Spacing
          const SizedBox(
            width: 24,
          ),

          // Text
          CustomText(
            text: "Ryota Enoki",
            color: lightGrey,
          ),

          // Spacing
          const SizedBox(
            width: 16,
          ),

          // User icon
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
      // backgroundColor: Colors.white,
    );
