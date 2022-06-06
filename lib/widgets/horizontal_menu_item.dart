import 'package:flutter/material.dart';
import "package:flutter_web_admin_page/constants/controllers.dart";

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
