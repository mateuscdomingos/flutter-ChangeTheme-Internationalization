import 'package:flutter/foundation.dart';

class Article {
  final num id;
  final String title;
  final String body;

  const Article({
    @required this.id,
    @required this.title,
    @required this.body,
  });
}
