import 'dart:io';

import 'package:core/core_module.dart';
import 'package:core/core.dart';

import 'package:news/common/exception.dart';
import 'package:news/domain/repository/news_repository.dart';
import 'package:news/news_module.dart';
import 'package:newsapp/app_module.dart';

void main() async {
  useModules([CoreModule(), AppModule(), NewsModule()]);

  await inject<Env>().load();

  final repo = inject<NewsRepository>();
  try {
    final data = await repo.getData();

    print("length ${data.length}");

    for (final article in data) {
      print("title: ${article.title}");
    }
  } on DataException catch (ex) {
    print("Error: ${ex.msg}");
  }

  exit(0);
}
