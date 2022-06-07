import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColorl;
  final bool isActive;
  final void Function() onTap;

  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.topColorl,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(0.1),
                blurRadius: 12,
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
