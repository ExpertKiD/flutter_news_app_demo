import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/data/enums/news_category.dart';
import 'package:news_app/utils/extensions/news_category.dart';

import '../models/news_provider/news.dart';
import 'data_provider.dart';

class NewsAPI extends DataProvider {
  final Dio dio;

  NewsAPI({required this.dio});

  Future<News> getNews({NewsCategory? category}) async {
    final Map<String, dynamic> queryParams = {
      'country': 'us',
      'apiKey': dotenv.get('NEWS_API_DOT_ORG_API_KEY', fallback: ''),
    };

    // Add category if present
    if (category != null) {
      queryParams['category'] = category.value;
    }

    try {
      final response = await dio.get('https://newsapi.org/v2/top-headlines',
          queryParameters: queryParams);

      return News.fromJson(response.data);
    } catch (error, stacktrace) {
      return Future.error(error, stacktrace);
    }
  }
}
