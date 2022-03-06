import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/news_detail_view/news_detail.dart';

import '../../data/models/news_provider/article.dart';

class NewsDetailPage extends StatelessWidget {
  final Article article;
  const NewsDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewsDetailView(article: article);
  }
}
