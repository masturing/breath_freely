import 'package:breath_freely/app/data/models/article_model.dart';
import 'package:breath_freely/app/domain/repositories/abstract/article_abstract.dart';

class ArticleRepository implements ArticleAbstractRepository {
  @override
  Future<ArticleModel> createArticle({required ArticleModel article}) {
    // TODO: implement createArticle
    throw UnimplementedError();
  }

  @override
  Future<ArticleModel> getArticleById({required String id}) {
    // TODO: implement getArticleById
    throw UnimplementedError();
  }

  @override
  Future<ArticleModel> getArticleByTitle({required String title}) {
    // TODO: implement getArticleByTitle
    throw UnimplementedError();
  }

  @override
  Future<Map> getArticleDashboard() {
    // TODO: implement getArticleDashboard
    throw UnimplementedError();
  }

  @override
  Future<List<ArticleModel>> getArticlesList() {
    // TODO: implement getArticlesList
    throw UnimplementedError();
  }
}
