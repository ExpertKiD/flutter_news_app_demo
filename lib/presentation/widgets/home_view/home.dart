import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/business_logic/blocs/news/main_headline_news_bloc.dart';
import 'package:news_app/business_logic/events/news_event/news_event.dart';
import 'package:news_app/business_logic/states/news_state/news_state.dart';
import 'package:news_app/presentation/widgets/news_layouts/featured_news_layout.dart';

import '../../../business_logic/states/news_state/news_state.dart';
import '../../../constants/colors.dart';

part 'top_headlines_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: _appBar(context),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: ListView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          children: const [
            TopHeadlinesView(),
          ]),
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
