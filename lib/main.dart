import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/presentation/apps/news_app.dart';

final dio = Dio();

Future main() async {
  await dotenv.load(fileName: '.env');

  runApp(const NewsApp());
}
