import 'package:news/domain/entities/articles.dart';

abstract class NewsLocalDataSource {
  Future<List<Article>> getData();

  Future<void> cacheData(List<Article> data);
}

class NewsLocalDataSourceImpl implements NewsLocalDataSource {
  final List<Article> _cache = [];

  NewsLocalDataSourceImpl();

  @override
  Future<List<Article>> getData() async {
    return _cache;
  }

  @override
  Future<void> cacheData(List<Article> data) async {
    _cache.clear();
    _cache.addAll(data);
  }
}
