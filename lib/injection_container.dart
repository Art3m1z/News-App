import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/daily_news/data/repository/news_article_repository_implementation.dart';
import 'package:news_app/features/daily_news/domain/repository/news_article_repository.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_news_article.dart';
import 'package:news_app/features/daily_news/presentation/bloc/remote/remote_article_bloc.dart';

final sl = GetIt.instance;


Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<NewsApiService>(
      NewsApiService(
          sl()
      )
  );

  sl.registerSingleton<NewsArticleRepository>(
      NewsArticleRepositoryImplementation(
          sl()
      )
  );
  sl.registerSingleton<GetArticleUseCase>(
      GetArticleUseCase(
          sl()
      )
  );

  sl.registerFactory<RemoteArticlesBloc>( () =>
      RemoteArticlesBloc(
          sl()
      )
  );

}