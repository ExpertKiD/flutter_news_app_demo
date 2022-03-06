import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/presentation/apps/news_app.dart';

import 'business_logic/observers/observer.dart';

final dio = Dio();

Future main() async {
  BlocOverrides.runZoned(
    () async {
      await dotenv.load(fileName: '.env');

      runApp(const NewsApp());
    },
    blocObserver: MyBlocObserver(),
  );
}
