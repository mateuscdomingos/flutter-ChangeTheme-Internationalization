import 'package:flutter/material.dart';

import 'package:appbasepe/screans/article_details_screen.dart';
import 'package:appbasepe/models/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem(this.article);

  void _selectArticle(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return ArticleDetails(article);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectArticle(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
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
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
