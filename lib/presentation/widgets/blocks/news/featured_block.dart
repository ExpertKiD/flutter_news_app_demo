import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/news_provider/article.dart';

class FeaturedBlock extends StatelessWidget {
  final Article article;

  const FeaturedBlock({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          child: Text(article.title),
          color: Colors.white,
        ),
      ],
    );
  }
}
