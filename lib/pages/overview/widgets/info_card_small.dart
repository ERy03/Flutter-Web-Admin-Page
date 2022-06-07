import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';

class MyWidget extends StatelessWidget {
  final String? title;
  final String? value;
  final bool isActive;
  final void Function()? onTap;

  const MyWidget(
      {Key? key, this.title, this.value, required this.isActive, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isActive ? active : lightGrey,
                width: 0.5,
              )),
        ),
      ),
    );
  }
}
