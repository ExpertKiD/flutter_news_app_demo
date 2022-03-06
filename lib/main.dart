import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/presentation/apps/news_app.dart';

Future main() async {
  await dotenv.load(fileName: '.env');

  runApp(const NewsApp());
}
