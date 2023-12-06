import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import '../../../domain/entities/news_article.dart';

abstract class RemoteArticleState extends Equatable {
    final List<NewsArticle> ? articles;
    final DioError ? error;

    const RemoteArticleState({this.articles, this.error});

    @override
    List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticleState{
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticleState {
  const RemoteArticlesDone(List<NewsArticle> article) : super(articles: article);
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioError error) : super(error: error);
}