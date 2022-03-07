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
          return const FeaturedNewsLayoutPlaceholder();
        } else if (state is NewsLoadSuccess) {
          return FeaturedNewsLayoutWidget(
            articles: state.news.articles,
            title: ReCase(categoryTitle).sentenceCase,
            maxVisibleArticles: maxVisibleArticles,
          );
        } else {
          return Container(
            color: AppColors.scaffoldBackgroundColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 48,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/placeholders/branded_placeholder.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Unable to connect to the server. Please pull down to refresh.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
