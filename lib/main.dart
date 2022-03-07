import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/presentation/apps/news_app.dart';
import 'package:path_provider/path_provider.dart';

import 'business_logic/observers/observer.dart';

final dio = Dio();

Future main() async {
  BlocOverrides.runZoned(
    () async {
      await dotenv.load(fileName: '.env');

      final tempDirectory = await getTemporaryDirectory().then((dir) {
        dio.interceptors.add(DioCacheInterceptor(
          options: CacheOptions(
            store: HiveCacheStore(dir.path),
            hitCacheOnErrorExcept: [401, 403],
            policy: CachePolicy.forceCache,
            allowPostMethod: false,
            priority: CachePriority.high,
            keyBuilder: CacheOptions.defaultCacheKeyBuilder,
            maxStale: const Duration(hours: 1),
          ),
        ));
      });

      runApp(const NewsApp());
    },
    blocObserver: MyBlocObserver(),
  );
}
