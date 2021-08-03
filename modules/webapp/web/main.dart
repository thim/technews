import 'dart:html';

import 'package:core/core.dart';
import 'package:core/core_module.dart';
import 'package:news/domain/entities/articles.dart';
import 'package:news/domain/repository/news_repository.dart';
import 'package:news/news_module.dart';

void main() {
  useModules([CoreModule(), NewsModule()]);
  var output = querySelector('#output');
  load(output);
}

void load(Element? output) async {
  await inject<Env>().load();
  final repo = inject<NewsRepository>();
  final data = await repo.getData();

  output?.children.addAll(data.map(newLI));
}

LIElement newLI(Article item) => LIElement()..text = item.title;
