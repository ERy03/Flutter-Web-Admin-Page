import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColorl;
  final bool isActive;
  final Function onTap;

  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.topColorl,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {}
}
