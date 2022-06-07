import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/helpers/local_navigator.dart';
import 'package:flutter_web_admin_page/widgets/side_menu.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: localNavigator(),
          ),
        ),
      ],
    );
  }
}
