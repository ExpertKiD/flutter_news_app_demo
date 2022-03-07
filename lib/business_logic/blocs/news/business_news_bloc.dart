import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news_app/data/enums/news_category.dart';
import 'package:news_app/data/repositories/news.dart';

import '../../../data/models/news_provider/news.dart';
import '../../events/news_event/news_event.dart';
import '../../states/news_state/news_state.dart';

class BusinessNewsBloc extends HydratedBloc<NewsEvent, NewsState> {
  final NewsRepository newsRepository;

  BusinessNewsBloc({required this.newsRepository})
      : super(NewsState.initial()) {
    on<NewsLoadStarted>(_newsLoadStarted);
  }

  Future _newsLoadStarted(
      NewsLoadStarted event, Emitter<NewsState> emit) async {
    emit(NewsState.loading());

    try {
      News news = await newsRepository.getNews(category: NewsCategory.business);

      emit(NewsState.loadSuccess(news: news));
    } catch (error) {
      emit(NewsState.loadFailure());
    }
  }

  @override
  NewsState? fromJson(Map<String, dynamic> json) => NewsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(NewsState state) => state.toJson();
}
