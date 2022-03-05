import 'package:flutter/material.dart';

import '../routers/app_router.dart';
import '../themes/theme.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      title: 'Naya Khabar',
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
