import 'dart:async';

import 'package:core/core.dart';
import 'package:news/domain/entities/articles.dart';
import 'package:news/domain/repository/news_repository.dart';

class MainPresenter {
  final _data = StreamController<MainData>.broadcast();

  Stream<MainData> get data => _data.stream;

  void load() async {
    final repo = inject<NewsRepository>();
    final result = await repo.getData();

    final data = MainData(result.first, result.sublist(1, 5), result.sublist(6));
    _data.add(data);
  }

  Future<void> dispose() async{
    await _data.close();
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
