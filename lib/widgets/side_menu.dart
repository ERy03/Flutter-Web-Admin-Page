import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';
import 'package:flutter_web_admin_page/helpers/responsiveness.dart';
import 'package:flutter_web_admin_page/routing/routes.dart';
import 'package:flutter_web_admin_page/widgets/custom_text.dart';
import 'package:flutter_web_admin_page/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "どこ？管理画面",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48)
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Divider(
                  color: lightGrey.withOpacity(0.1),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItems
                      .map((itemName) => SideMenuItem(
                          itemName: itemName == authenticationPageRoute
                              ? "Log Out"
                              : itemName,
                          onTap: () {
                            if (itemName == authenticationPageRoute) {
                              //TODO
                            }
                          }))
                      .toList(),
                )
              ],
            )
        ],
      ),
    );
  }
}
