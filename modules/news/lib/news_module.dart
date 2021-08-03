import 'package:core/core.dart';

import 'data/dataSource/news_local_datasource.dart';
import 'data/dataSource/news_remote_datasource.dart';
import 'data/repository/news_repository_impl.dart';
import 'domain/repository/news_repository.dart';

class NewsModule implements ModuleDI {
  @override
  void registerInject(AppInject injector) {
    injector.registerDependency<NewsRemoteDataSource>(() => NewsRemoteDataSourceImpl(injector(), injector()));
    //injector.registerDependency<NewsRemoteDataSource>(() => MockRemoteDataSourceImpl());
    injector.registerSingleton<NewsLocalDataSource>(() => NewsLocalDataSourceImpl()); // simulating a memory cache
    injector.registerDependency<NewsRepository>(() => NewsRepositoryImpl(injector(), injector()));
  }
}
