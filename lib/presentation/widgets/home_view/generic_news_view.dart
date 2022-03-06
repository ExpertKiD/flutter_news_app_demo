part of 'home.dart';

class GenericNewsView<BlocA extends Bloc<NewsEvent, NewsState>>
    extends StatefulWidget {
  final int maxVisibleArticles;
  final String categoryTitle;
  final bool showCategoryTitle;

  const GenericNewsView({
    Key? key,
    required this.maxVisibleArticles,
    required this.categoryTitle,
    this.showCategoryTitle = true,
  }) : super(key: key);

  @override
  State<GenericNewsView> createState() => _GenericNewsViewState<BlocA>(
        maxVisibleArticles: maxVisibleArticles,
        categoryTitle: categoryTitle,
        showCategoryTitle: showCategoryTitle,
      );
}

class _GenericNewsViewState<BlocA extends Bloc<NewsEvent, NewsState>>
    extends State<GenericNewsView> {
  final int maxVisibleArticles;
  final String categoryTitle;
  final bool showCategoryTitle;

  _GenericNewsViewState({
    required this.maxVisibleArticles,
    required this.categoryTitle,
    required this.showCategoryTitle,
  });

  @override
  void initState() {
    super.initState();

    if (context.read<BlocA>().state is NewsInitial ||
        context.read<BlocA>().state is NewsLoadFailure) {
      context.read<BlocA>().add(NewsEvent.newsLoadStarted());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocA, NewsState>(
      builder: (context, state) {
        if (state is NewsInitial || state is NewsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewsLoadSuccess) {
          return FeaturedNewsLayoutWidget(
            articles: state.news.articles,
            title: ReCase(categoryTitle).sentenceCase,
            maxVisibleArticles: maxVisibleArticles,
          );
        } else {
          return const SizedBox(
            height: 0,
          );
        }
      },
    );
  }
}
