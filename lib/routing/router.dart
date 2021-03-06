import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/pages/clients/clients.dart';
import 'package:flutter_web_admin_page/pages/drivers/drivers.dart';
import 'package:flutter_web_admin_page/pages/overview/overview.dart';
import 'package:flutter_web_admin_page/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
