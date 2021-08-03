import 'package:core/core_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:news/ui/main.dart';

class NewsRoute implements ModuleRoute {
  @override
  Map<String, WidgetBuilder> routes() => {NewsPage.route: (context) => NewsPage()};
}
