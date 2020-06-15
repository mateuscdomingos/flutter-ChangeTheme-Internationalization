import 'package:appbasepe/components/article_item.dart';
import 'package:appbasepe/models/article.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  ArticleList(this.articles);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: articles.map((article) {
            return ArticleItem(article);
          }).toList(),
        ),
      ],
    );
  }
}
