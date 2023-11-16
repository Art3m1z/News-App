import 'dart:html';
import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/daily_news/domain/repository/news_article_repository.dart';
import '../../../../core/constants/constants.dart';
import '../models/article.dart';
import 'package:dio/dio.dart';

class NewsArticleRepositoryImplementation implements NewsArticleRepository {
  final NewsApiService _newsApiService;

  NewsArticleRepositoryImplementation(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() async {
    try {
    final httpResponse = await _newsApiService.getNewsArticles(
      apiKey: newsAPIKey,
      country: countryQuery,
      category: categoryQuery,
    );
    if (httpResponse.response.statusCode == HttpStatus.ok) {
      return DataSuccess(httpResponse.data);
    } else {
      return DataError(
          DioError(
              error: httpResponse.response.statusMessage,
              response: httpResponse.response,
              type: DioErrorType.response,
              requestOptions: httpResponse.response.requestOptions
          ));
    }
    } on DioError catch (e) {
      return DataError(e);
    }
  }
}
