import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/business_logic/blocs/news/business_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/entertainment_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/general_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/health_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/main_headline_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/science_news_bloc.dart';
import 'package:news_app/business_logic/blocs/news/technology_news_bloc.dart';
import 'package:news_app/data/providers/news_api_org.dart';
import 'package:news_app/data/repositories/news.dart';

import '../../business_logic/blocs/news/sports_news_bloc.dart';
import '../../main.dart';
import '../routers/app_router.dart';
import '../themes/theme.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _providers(),
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        title: 'Naya Khabar',
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }

  List<BlocProvider> _providers() => [
        BlocProvider(
          create: (context) => MainHeadlineNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => BusinessNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => EntertainmentNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => GeneralNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => HealthNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ScienceNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => SportsNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => TechnologyNewsBloc(
            newsRepository: NewsRepository(
              NewsAPI(dio: dio),
            ),
          ),
        ),
      ];
}
