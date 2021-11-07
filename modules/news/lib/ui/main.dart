import 'dart:async';

import 'package:core/core_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:news/domain/entities/articles.dart';

import 'main_presenter.dart';

final DateFormat formatter = DateFormat('EEEE, dd MMMM yyyy');

class NewsPage extends StatefulWidget {
  static final String route = "/news";

  NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final presenter = MainPresenter();

  @override
  void initState() {
    super.initState();
    presenter.load();
  }

  dispose() async {
    await presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<MainData>(
        stream: presenter.data,
        builder: (ctx, snap) {
          if (snap.hasData) {
            final isMobile = MediaQuery.of(context).size.width < 960;

            return isMobile ? MobileLayout(snap.requireData) : BigLayout(snap.requireData);
          }

          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          presenter.load();
        },
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class BigLayout extends StatelessWidget {
  final MainData data;

  const BigLayout(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.backgroundColor,
      child: Container(
        width: 960,
        child: Column(
          children: [
            SizedBox(height: 40),
            Align(
              child: Text(formatter.format(DateTime.now()), style: AppStyle.p1().build()),
              alignment: Alignment.centerLeft,
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                Text(
                  "TECH NEWS",
                  style: AppStyle.custom(72).normal.withHeight(1.2).build(),
                ),
                Divider(),
                Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: HeadPost(data.head),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        thickness: 0.5,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: TopArticles(data.top3),
                    ),
                  ],
                ),
                Divider(
                  indent: 100,
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  "RECENT POSTS",
                  style: AppStyle.h1().normal.withHeight(1.2).build(),
                ),
                RecentArticles(data.data)
              ])),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  final MainData data;

  const MobileLayout(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.backgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: Align(
                child: Text(formatter.format(DateTime.now()), style: AppStyle.p1().build()),
                alignment: Alignment.centerLeft,
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                Text(
                  "TECH NEWS",
                  style: AppStyle.custom(60).normal.withHeight(1.2).build(),
                ),
                Divider(),
                HeadPost(data.head),
                TopArticles(data.top3),
                Divider(
                  indent: 100,
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  "RECENT POSTS",
                  style: AppStyle.h1().normal.withHeight(1.2).build(),
                ),
                RecentArticles(data.data)
              ])),
            ),
          ],
        ),
      ),
    );
  }
}

class TopArticles extends StatelessWidget {
  final List<Article> articles;

  const TopArticles(
    this.articles, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: articles.length,
          separatorBuilder: (c, i) {
            return Divider(
              thickness: 0.5,
            );
          },
          itemBuilder: (c, i) {
            final item = articles[i];
            return Container(
              margin: const EdgeInsets.all(8.0),
              height: 120,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "${i + 1}.",
                    style: AppStyle.h1().normal.build(),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: AppStyle.p1().medium.build(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        item.publishedAt,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Image.network(item.urlToImage,
                        errorBuilder: (context, error, stack) => Container(
                              height: 100,
                              width: 100,
                              color: AppColors.deepKoamaru,
                            ),
                        width: 100,
                        height: 100,
                        fit: BoxFit.fitHeight),
                  )
                ],
              ),
            );
          }),
    );
  }
}

class RecentArticles extends StatelessWidget {
  final List<Article> articles;

  const RecentArticles(
    this.articles, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: (c, i) {
          final item = articles[i];
          return Container(
            margin: const EdgeInsets.fromLTRB(8, 8, 8, 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                  child: Image.network(item.urlToImage,
                      errorBuilder: (context, error, stack) => Container(
                            height: 100,
                            width: 100,
                            color: AppColors.deepKoamaru,
                          ),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitHeight),
                ),
                SizedBox(width: 16.0),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: AppStyle.h2().medium.build(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                    SizedBox(height: 8.0),
                    Wrap(
                      children: [
                        Text(
                          item.author,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            item.source,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          item.publishedAt,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          );
        });
  }
}

class HeadPost extends StatelessWidget {
  final Article article;

  const HeadPost(
    this.article, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(children: [
            Image.network(article.urlToImage,
                errorBuilder: (context, error, stack) => Container(
                      height: 500,
                      width: 500,
                      color: AppColors.deepKoamaru,
                    ),
                width: 500,
                height: 500,
                fit: BoxFit.fitHeight),
            Positioned(
              child: Container(
                  color: Colors.black87,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    article.source,
                    style: AppStyle.p2().withColor(AppColors.white).withHeight(1.3).build(),
                  )),
              top: 8,
              right: 8,
            )
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0),
            child: Text(
              article.title,
              style: AppStyle.h1().medium.build(),
            ),
          ),
        ],
      ),
    );
  }
}
