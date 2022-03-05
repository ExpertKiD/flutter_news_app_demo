import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
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
      ),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(),
    );
  }
}
