import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:news/common/exception.dart';
import 'package:news/common/mock.dart';
import 'package:news/data/model/articles.dart';
import 'package:news/domain/entities/articles.dart';

abstract class NewsRemoteDataSource {
  Future<List<Article>> getData();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final Network _network;

  static const String _key = String.fromEnvironment("APIKEY");

  NewsRemoteDataSourceImpl(this._network);

  @override
  Future<List<Article>> getData() async {
    try {
      final uri = Uri.https("newsapi.org", "/v2/top-headlines", {"category": "technology", "country": "br", "apiKey": "$_key"});

      final response = await _network.get(url: uri);

      if (!response.isSuccess) {
        throw Exception("Invalid statusCode ${response.statusCode}");
      }

      return _parseData(response.body);
      //return compute(_parseData, response.body);
    } catch (e, stack) {
      log("Error: $e", stackTrace: stack, name: "DataLayer");
      throw DataSourceException(e.toString());
    }
  }
}

class MockRemoteDataSourceImpl implements NewsRemoteDataSource {
  MockRemoteDataSourceImpl();

  @override
  Future<List<Article>> getData() async {
    try {
      //return compute(_parseData, apiMock);
      return _parseData(apiMock);
    } catch (e, stack) {
      log("Error: $e", stackTrace: stack, name: "DataLayer");
      throw DataSourceException(e.toString());
    }
  }
}

List<Article> _parseData(String body) {
  final data = json.decode(body);
  final model = ArticlesModel.fromJson(data);

  return model.articles.map((e) => e.toEntity()).toList();
}
