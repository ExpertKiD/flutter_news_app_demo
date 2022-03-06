import 'package:flutter/material.dart';

import '../../data/models/news_provider/article.dart';
import '../pages/home.dart';
import '../pages/news_detail.dart';
import '../routes/routes.dart';

class AppRouter {
  const AppRouter._();
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case Routes.newsDetail:
        return MaterialPageRoute(
            builder: (_) => NewsDetailPage(
                  article: settings.arguments as Article,
                ));
      default:
        return null;
    }
  }
}
