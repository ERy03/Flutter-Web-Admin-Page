import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/controllers.dart';
import 'package:flutter_web_admin_page/routing/router.dart';
import 'package:flutter_web_admin_page/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
