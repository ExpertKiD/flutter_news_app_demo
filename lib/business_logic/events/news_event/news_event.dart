import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.freezed.dart';

@freezed
class NewsEvent with _$NewsEvent {
  factory NewsEvent.newsLoading() = NewsLoadingEvent;
}
