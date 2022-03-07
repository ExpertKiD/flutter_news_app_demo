import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/news_provider/news.dart';

part 'news_state.freezed.dart';
part 'news_state.g.dart';

@freezed
class NewsState with _$NewsState {
  factory NewsState.initial() = NewsInitial;
  factory NewsState.loading() = NewsLoading;
  factory NewsState.loadSuccess({required News news}) = NewsLoadSuccess;
  factory NewsState.loadFailure() = NewsLoadFailure;

  factory NewsState.fromJson(Map<String, dynamic> json) => _$NewsStateFromJson(json);
}
