import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/extensions/datetime.dart';

import '../../../../data/models/news_provider/article.dart';
import '../../../routes/routes.dart';

class FeaturedBlock extends StatelessWidget {
  final Article article;

  const FeaturedBlock({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(Routes.newsDetail, arguments: article);
          },
          child: Column(
            children: [
              if (article.urlToImage != null)
                CachedNetworkImage(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  placeholder: (_, __) => const Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/placeholders/branded_placeholder.png',
                      )),
                  imageUrl: article.urlToImage!,
                )
              else
                Image.asset(
                  'assets/placeholders/branded_placeholder.png',
                  fit: BoxFit.cover,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  article.title,
                  style: Theme.of(context).textTheme.displayMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 8, right: 16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(article.publishedAt.toStringWithTimeContext()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
