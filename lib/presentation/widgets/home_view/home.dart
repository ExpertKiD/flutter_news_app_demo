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

part 'generic_news_view.dart';
part 'top_headlines_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
              categoryTitle: NewsCategory.sports.value,
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
}
