import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(0.1),
              blurRadius: 12,
            )
          ]),
    );
  }
}
