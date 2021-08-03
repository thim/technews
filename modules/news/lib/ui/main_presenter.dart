import 'dart:async';

import 'package:core/core.dart';
import 'package:news/domain/entities/articles.dart';
import 'package:news/domain/repository/news_repository.dart';

class MainPresenter {
  final _head = StreamController<Article>.broadcast();

  Stream<Article> get head => _head.stream;

  final _top3 = StreamController<List<Article>>.broadcast();

  Stream<List<Article>> get top3 => _top3.stream;

  final _data = StreamController<MainData>.broadcast();

  Stream<MainData> get data => _data.stream;

  void load() async {
    final repo = inject<NewsRepository>();
    final result = await repo.getData();

    _head.add(result.first);
    _top3.add(result.sublist(1, 5));

    final d = MainData(result.first, result.sublist(1, 5), result.sublist(6));
    _data.add(d);
  }
}

class MainData {
  final List<Article> data;
  final List<Article> top3;
  final Article head;

  MainData(
    this.head,
    this.top3,
    this.data,
  );
}
