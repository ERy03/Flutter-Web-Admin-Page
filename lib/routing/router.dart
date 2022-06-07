import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings) {}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
