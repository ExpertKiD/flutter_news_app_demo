part of 'home.dart';

class TopHeadlinesView extends StatefulWidget {
  const TopHeadlinesView({Key? key}) : super(key: key);

  @override
  State<TopHeadlinesView> createState() => _TopHeadlinesViewState();
}

class _TopHeadlinesViewState extends State<TopHeadlinesView> {
  @override
  void initState() {
    super.initState();
    context.read<MainHeadlineNewsBloc>().add(NewsEvent.newsLoadStarted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainHeadlineNewsBloc, NewsState>(
      builder: (context, state) {
        if (state is NewsInitial || state is NewsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewsLoadSuccess) {
          return FeaturedNewsLayoutWidget(
            articles: state.news.articles,
            title: 'Main News',
            maxVisibleArticles: 6,
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
