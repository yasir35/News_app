import 'package:news_app/Models/News_Headlines_Model.dart';
import 'package:news_app/Models/categories_news_model.dart';
import 'package:news_app/Repository/News_Repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();
  Future<NewsHeadlineModel> fetchNewsHeadlinesApi(String channelName) async {
    final response = await _rep.fetchNewsHeadlinesApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async {
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
}
