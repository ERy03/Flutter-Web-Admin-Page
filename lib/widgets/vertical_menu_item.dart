import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/controllers.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onTap;

  const VerticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
    );
  }
}
