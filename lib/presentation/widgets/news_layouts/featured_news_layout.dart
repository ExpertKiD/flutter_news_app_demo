import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/blocks/news/featured_block.dart';
import 'package:news_app/presentation/widgets/blocks/news/single_news_block.dart';

import '../../../data/models/news_provider/article.dart';

class FeaturedNewsLayoutWidget extends StatelessWidget {
  final List<Article> articles;
  final String title;
  final int maxVisibleArticles;
  const FeaturedNewsLayoutWidget({
    Key? key,
    required this.articles,
    required this.title,
    this.maxVisibleArticles = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(title),
          TextButton(
            child: const Text('More'),
            onPressed: () {},
          ),
        ]),
        ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return FeaturedBlock(article: articles[index]);
            } else {
              return SingleNewsBlock(article: articles[index]);
            }
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 8,
            );
          },
          itemCount: articles.length > maxVisibleArticles
              ? maxVisibleArticles
              : articles.length,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
        ),
      ],
    );
  }
}
