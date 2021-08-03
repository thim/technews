import 'dart:convert';

import 'package:news/domain/entities/articles.dart';
import 'package:intl/intl.dart';

ArticlesModel articlesFromJson(String str) => ArticlesModel.fromJson(json.decode(str));

String articlesToJson(ArticlesModel data) => json.encode(data.toJson());

class ArticlesModel {
  ArticlesModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<ArticleModel>.from(json["articles"].map((x) => ArticleModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}

class ArticleModel {
  ArticleModel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final SourceModel? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        source: SourceModel.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source?.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}

class SourceModel {
  SourceModel({
    this.id,
    required this.name,
  });

  final String? id;
  final String name;

  factory SourceModel.fromJson(Map<String, dynamic> json) => SourceModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

final DateFormat formatter = DateFormat('dd MMM yyyy');

extension ArticleModelMapper on ArticleModel {

  Article toEntity() => Article(
        source: source?.name ?? "",
        author: author ?? "",
        title: title ?? "",
        description: description ?? "",
        url: url ?? "",
        urlToImage: urlToImage ?? "",
        publishedAt: formatter.format(publishedAt),
        content: content ?? "",
      );
}
