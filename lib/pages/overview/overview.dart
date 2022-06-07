import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/controllers.dart';
import 'package:flutter_web_admin_page/helpers/responsiveness.dart';
import 'package:flutter_web_admin_page/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_admin_page/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_admin_page/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web_admin_page/pages/overview/widgets/revenue_section_large.dart';
import 'package:flutter_web_admin_page/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                  ),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  OverviewCardMediumScreenSize()
                else
                  OverviewCardLargeScreen()
              else
                OverviewCardSmallScreen(),
              RevenueSectionLarge(),
            ],
          ),
        ),
      ],
    );
  }
}
