import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/repository/news_article_repository.dart';
import '../models/article.dart';

class NewsArticleRepositoryImplementation implements NewsArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() {
    throw UnimplementedError();
  }

}