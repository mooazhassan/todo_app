import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/presentation/screens/home/home_page.dart';

class RoutesManager {
  static const String homeRoutes = '/home';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case homeRoutes:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
