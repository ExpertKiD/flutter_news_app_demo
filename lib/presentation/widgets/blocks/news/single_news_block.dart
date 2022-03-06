import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/extensions/datetime.dart';

import '../../../../data/models/news_provider/article.dart';

class SingleNewsBlock extends StatelessWidget {
  final Article article;
  const SingleNewsBlock({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      article.title,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
              ),
            ),
            if (article.urlToImage != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                    placeholder: (_, __) => const Image(
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/placeholders/branded_placeholder.png',
                        )),
                    imageUrl: article.urlToImage!,
                  ),
                ),
              )
            else
              Image.asset(
                'assets/placeholders/branded_placeholder.png',
                fit: BoxFit.cover,
                height: 80,
                width: 80,
              )
          ],
        ),
      ),
    );
  }
}
