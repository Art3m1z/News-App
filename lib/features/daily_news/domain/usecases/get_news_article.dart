import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/core/usecases/usecase.dart';
import 'package:news_app/features/daily_news/domain/repository/news_article_repository.dart';
import '../entities/news_article.dart';

class GetArticleUseCase implements UseCase<DataState<List<NewsArticle>>, void> {
  final NewsArticleRepository _newsArticleRepository;
  GetArticleUseCase(this._newsArticleRepository);

  @override
  Future<DataState<List<NewsArticle>>> call({void params}) {
    return _newsArticleRepository.getNewsArticle();
  }

}