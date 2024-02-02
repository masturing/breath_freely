import '../../../data/models/article_model.dart';

abstract class ArticleAbstractRepository {
  Future<ArticleModel> getArticleById({required String id});
  Future<ArticleModel> getArticleByTitle({required String title});
  Future<List<ArticleModel>> getArticlesList();
  Future<ArticleModel> createArticle({required ArticleModel article});
  Future<Map> getArticleDashboard();
}
