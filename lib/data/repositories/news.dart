import 'package:news_app/data/enums/news_category.dart';
import 'package:news_app/data/providers/news_api_org.dart';
import 'package:news_app/data/repositories/repository.dart';

import '../models/news_provider/news.dart';

class NewsRepository extends Repository {
  final NewsAPI newsApiProvider;

  NewsRepository(this.newsApiProvider);

  Future<News> getNews({NewsCategory? category}) async {
    return await newsApiProvider.getNews(category: category);
  }
}
