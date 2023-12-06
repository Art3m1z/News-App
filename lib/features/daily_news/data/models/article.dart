import 'package:news_app/features/daily_news/domain/entities/news_article.dart';

class ArticleModel extends NewsArticle {
  const ArticleModel({
     Map<String, dynamic>? source,
     String? author,
     String? title,
     String? description,
     String? url,
     String? urlToImage,
     String? publishedAt,
     String? content
  });

  factory ArticleModel.fromJson(Map<String, dynamic> data) {
    return ArticleModel(
      source: data['source'] ?? {},
      author: data['author'] ?? '',
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      url: data['url'] ?? '',
      urlToImage: data['urlToImage'] ?? '',
      publishedAt: data['publishedAt'] ?? '',
      content: data['content'] ?? ''
    );
  }
}