import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/business_logic/blocs/news/business_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/entertainment_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/general_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/health_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/main_headline_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/science_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/sports_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/technology_news_bloc.dart';
import 'package:news_app/business_logic/events/news_event/news_event.dart';
import 'package:news_app/business_logic/states/news_state/news_state.dart';
import 'package:news_app/data/enums/news_category.dart';
import 'package:news_app/presentation/placeholders/featured_news_layout.dart';
import 'package:news_app/presentation/widgets/news_layouts/featured_news_layout.dart';
import 'package:news_app/utils/extensions/news_category.dart';
import 'package:recase/recase.dart';

import '../../../business_logic/states/news_state/news_state.dart';
import '../../../constants/colors.dart';
import '../../routes/routes.dart';

part 'generic_news_view.dart';
part 'top_headlines_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: _drawer(context),
      ),
      appBar: _appBar(context),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<MainHeadlineNewsBloc>().add(NewsEvent.newsLoadStarted());
          context.read<BusinessNewsBloc>().add(NewsEvent.newsLoadStarted());
          context
              .read<EntertainmentNewsBloc>()
              .add(NewsEvent.newsLoadStarted());
          context.read<GeneralNewsBloc>().add(NewsEvent.newsLoadStarted());
          context.read<HealthNewsBloc>().add(NewsEvent.newsLoadStarted());
          context.read<ScienceNewsBloc>().add(NewsEvent.newsLoadStarted());
          context.read<SportsNewsBloc>().add(NewsEvent.newsLoadStarted());
          context.read<TechnologyNewsBloc>().add(NewsEvent.newsLoadStarted());
        },
        child: ListView(
          children: [
            const GenericNewsView<MainHeadlineNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: 'Main news',
            ),
            GenericNewsView<BusinessNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.business.value,
            ),
            GenericNewsView<EntertainmentNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.entertainment.value,
            ),
            GenericNewsView<GeneralNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.general.value,
            ),
            GenericNewsView<HealthNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.health.value,
            ),
            GenericNewsView<ScienceNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.science.value,
            ),
            GenericNewsView<SportsNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.sports.value,
            ),
            GenericNewsView<TechnologyNewsBloc>(
              maxVisibleArticles: 6,
              categoryTitle: NewsCategory.technology.value,
            ),
          ],
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) => AppBar(
        leading: Builder(builder: (buildContext) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(buildContext).colorScheme.secondary,
                borderRadius: BorderRadius.circular(50),
              ),
              width: 20,
              height: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  if (Scaffold.of(buildContext).hasDrawer &&
                      !Scaffold.of(buildContext).isDrawerOpen) {
                    Scaffold.of(buildContext).openDrawer();
                  }
                },
              ),
            ),
          );
        }),
        title: const Image(
            height: 32,
            image: AssetImage('assets/logos/icon_with_brand_name.png')),
      );

  Drawer _drawer(BuildContext context) {
    NewsState mainHeadlinesNewsBlocState =
        context.watch<MainHeadlineNewsBloc>().state;
    NewsState businessNewsBlocState = context.watch<BusinessNewsBloc>().state;
    NewsState entertainmentNewsBlocState =
        context.watch<EntertainmentNewsBloc>().state;
    NewsState generalNewsBlocState = context.watch<GeneralNewsBloc>().state;
    NewsState healthNewsBlocState = context.watch<HealthNewsBloc>().state;
    NewsState scienceNewsBlocState = context.watch<ScienceNewsBloc>().state;
    NewsState sportsNewsBlocState = context.watch<SportsNewsBloc>().state;
    NewsState technologyNewsBlocState =
        context.watch<TechnologyNewsBloc>().state;

    return Drawer(
      child: ListView(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Image(
                height: 32,
                image: AssetImage('assets/logos/icon_with_brand_name.png'),
              )),
          if (mainHeadlinesNewsBlocState is NewsLoadSuccess)
            ListTile(
                title: const Text('Main News'),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    Routes.newsListDetail,
                    arguments: mainHeadlinesNewsBlocState.news.articles,
                  );
                }),
          if (businessNewsBlocState is NewsLoadSuccess)
            ListTile(
                title: Text(ReCase(NewsCategory.business.value).sentenceCase),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    Routes.newsListDetail,
                    arguments: businessNewsBlocState.news.articles,
                  );
                }),
          if (entertainmentNewsBlocState is NewsLoadSuccess)
            ListTile(
              title:
                  Text(ReCase(NewsCategory.entertainment.value).sentenceCase),
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.newsListDetail,
                  arguments: entertainmentNewsBlocState.news.articles,
                );
              },
            ),
          if (generalNewsBlocState is NewsLoadSuccess)
            ListTile(
              title: Text(ReCase(NewsCategory.general.value).sentenceCase),
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.newsListDetail,
                  arguments: generalNewsBlocState.news.articles,
                );
              },
            ),
          if (healthNewsBlocState is NewsLoadSuccess)
            ListTile(
              title: Text(ReCase(NewsCategory.health.value).sentenceCase),
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.newsListDetail,
                  arguments: healthNewsBlocState.news.articles,
                );
              },
            ),
          if (scienceNewsBlocState is NewsLoadSuccess)
            ListTile(
              title: Text(ReCase(NewsCategory.science.value).sentenceCase),
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.newsListDetail,
                  arguments: scienceNewsBlocState.news.articles,
                );
              },
            ),
          if (sportsNewsBlocState is NewsLoadSuccess)
            ListTile(
              title: Text(ReCase(NewsCategory.sports.value).sentenceCase),
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.newsListDetail,
                  arguments: sportsNewsBlocState.news.articles,
                );
              },
            ),
          if (technologyNewsBlocState is NewsLoadSuccess)
            ListTile(
              title: Text(ReCase(NewsCategory.technology.value).sentenceCase),
              onTap: () {
                Navigator.of(context).pushNamed(
                  Routes.newsListDetail,
                  arguments: technologyNewsBlocState.news.articles,
                );
              },
            ),
        ],
      ),
    );
  }
}
