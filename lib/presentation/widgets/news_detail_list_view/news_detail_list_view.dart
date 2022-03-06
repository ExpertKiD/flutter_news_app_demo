import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/news_layouts/featured_news_layout.dart';

import '../../../data/models/news_provider/article.dart';

class NewsListDetailView extends StatelessWidget {
  final List<Article> articles;

  const NewsListDetailView({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
            height: 32,
            image: AssetImage('assets/logos/icon_with_brand_name.png')),
      ),
      body: SingleChildScrollView(
        child: FeaturedNewsLayoutWidget(
          title: '',
          articles: articles,
          maxVisibleArticles: articles.length,
          showCategoryTitle: false,
        ),
      ),
    );
  }
}
