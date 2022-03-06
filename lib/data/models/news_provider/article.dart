import 'package:freezed_annotation/freezed_annotation.dart';

import 'source.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  factory Article({
    required Source source,
    @Default('Anonymous') String author,
    @Default('Untitled') String title,
    @Default('Nothing to see here.') String description,
    String? url,
    String? urlToImage,
    required DateTime publishedAt,
    @Default('Nothing to see here.') String content,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
