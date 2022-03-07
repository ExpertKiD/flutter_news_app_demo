import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news_app/presentation/apps/news_app.dart';
import 'package:path_provider/path_provider.dart';

import 'business_logic/observers/observer.dart';

final dio = Dio();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final documentsDirectory = await getApplicationDocumentsDirectory();
  final hydratedBlocStorage =
      await HydratedStorage.build(storageDirectory: documentsDirectory);

  HydratedBlocOverrides.runZoned(
    () async {
      await dotenv.load(fileName: '.env');

      dio.interceptors.add(
        DioCacheInterceptor(
          options: CacheOptions(
            store: HiveCacheStore(documentsDirectory.path),
            hitCacheOnErrorExcept: [401, 403],
            policy: CachePolicy.forceCache,
            allowPostMethod: false,
            priority: CachePriority.high,
            keyBuilder: CacheOptions.defaultCacheKeyBuilder,
            maxStale: const Duration(hours: 1),
          ),
        ),
      );

      runApp(const NewsApp());
    },
    storage: hydratedBlocStorage,
    blocObserver: MyBlocObserver(),
  );
}
