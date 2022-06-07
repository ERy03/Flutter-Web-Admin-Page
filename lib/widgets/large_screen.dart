import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
