import 'package:flutter/material.dart';

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
      child: InkWell(),
    );
  }
}
