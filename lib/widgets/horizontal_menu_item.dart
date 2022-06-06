import 'package:flutter/material.dart';

import '../controllers/menu_controller.dart';

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
            ? MenuController.onHover(itemName)
            : MenuController.onHover("not hovering");
      },
    );
  }
}
