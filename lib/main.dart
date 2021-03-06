import 'dart:async';

import 'package:core/core_flutter.dart';
import 'package:core/core_module.dart';
import 'package:core/core_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news/news_module.dart';
import 'package:news/news_route.dart';

import 'app_module.dart';

Future<void> main() async {
  useModules([CoreModule(), AppModule(), NewsModule()]);
  moduleRoutes([NewsRoute()]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechNews',
      theme: appTheme(context),
      initialRoute: "/news",
      routes: moduleRoutes.routes,
    );
  }
}
