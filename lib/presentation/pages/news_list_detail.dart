import 'package:flutter/material.dart';

import '../../data/models/news_provider/article.dart';
import '../widgets/news_detail_list_view/news_detail_list_view.dart';

class NewsListDetailPage extends StatelessWidget {
  final List<Article> articles;

  const NewsListDetailPage({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewsListDetailView(
      articles: articles,
    );
  }
}
