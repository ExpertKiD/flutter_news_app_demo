import 'package:flutter/material.dart';

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
        return MaterialPageRoute(builder: (_) => const NewsDetailPage());
      default:
        return null;
    }
  }
}
