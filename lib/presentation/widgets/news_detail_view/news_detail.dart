import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/news_provider/article.dart';

class NewsDetailView extends StatelessWidget {
  final Article article;

  const NewsDetailView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
            height: 32,
            image: AssetImage('assets/logos/icon_with_brand_name.png')),
      ),
      body: ListView(
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
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                article.title,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Divider(color: Colors.white),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('${article.content}\n\n' * 5),
          )
        ],
      ),
    );
  }
}
