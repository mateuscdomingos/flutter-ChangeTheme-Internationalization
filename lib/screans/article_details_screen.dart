import 'package:appbasepe/models/article.dart';
import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
  final Article article;

  const ArticleDetails(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article details'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      article.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    article.body,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
