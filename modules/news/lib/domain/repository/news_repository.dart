import '../entities/articles.dart';

abstract class NewsRepository {
  Future<List<Article>> getData();
}
