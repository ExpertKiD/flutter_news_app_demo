import '../../data/enums/news_category.dart';

extension NewsCategoryExtension on NewsCategory {
  String get value {
    switch (this) {
      case NewsCategory.business:
        return 'business';
      case NewsCategory.entertainment:
        return 'entertainment';
      case NewsCategory.general:
        return 'general';
      case NewsCategory.health:
        return 'health';
      case NewsCategory.science:
        return 'science';
      case NewsCategory.sports:
        return 'sports';
      case NewsCategory.technology:
        return 'technology';
    }
  }
}
