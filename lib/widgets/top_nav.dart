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
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              color: dark.withOpacity(0.7),
            ),
            Stack(
              children: <Widget>[],
            )
          ],
        )
        // backgroundColor: Colors.white,
        );
