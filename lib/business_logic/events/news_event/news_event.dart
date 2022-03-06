import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/enums/news_category.dart';

part 'news_event.freezed.dart';

@freezed
class NewsEvent with _$NewsEvent {
  factory NewsEvent.newsLoadStarted() = NewsLoadStarted;
}
