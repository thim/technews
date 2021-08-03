import 'package:news/common/exception.dart';
import 'package:news/data/dataSource/news_local_datasource.dart';
import 'package:news/data/dataSource/news_remote_datasource.dart';
import 'package:news/domain/entities/articles.dart';
import 'package:news/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource _remote;
  final NewsLocalDataSource _local;

  NewsRepositoryImpl(this._remote, this._local);

  @override
  Future<List<Article>> getData() async {
    try {
      final data = await _remote.getData();
      _local.cacheData(data);
      return data;
    } on DataSourceException catch (ex) {
      throw DataException(ex.msg);
    }
  }
}
