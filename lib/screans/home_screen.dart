import 'package:appbasepe/components/article_list.dart';
import 'package:appbasepe/components/main_drawer.dart';
import 'package:appbasepe/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:appbasepe/models/article.dart';

class HomeScreen extends StatelessWidget {
  final List<Article> _articles = DUMMY_ARTICLES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: ArticleList(_articles),
      ),
    );
  }
}
