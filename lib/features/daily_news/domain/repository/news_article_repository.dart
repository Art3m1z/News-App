import 'package:news_app/features/daily_news/domain/entities/news_article.dart';
import '../../../../core/resources/data_state.dart';

abstract class NewsArticleRepository {
  Future<DataState<List<NewsArticle>>> getNewsArticle();
}