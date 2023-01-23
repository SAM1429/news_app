import 'dart:convert';

import '../model/newsmodel.dart';
import 'package:http/http.dart';

class News {
  List<ArticleModel> datatobesaved = [];
  Future<void> getNews() async {
    //key=9f9229fce07f4b69ab37d3d2a5ae5094
    var response = await get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=9f9229fce07f4b69ab37d3d2a5ae5094');
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            urlToImage: element['urlToImage'],
            description: element['description'],
            url: element['url'],
          );

          datatobesaved.add(articleModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<ArticleModel> datatobesaved = [];
  Future<void> getNews(String category) async {
    //key=9f9229fce07f4b69ab37d3d2a5ae5094
    var response = await get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=9f9229fce07f4b69ab37d3d2a5ae5094');
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            urlToImage: element['urlToImage'],
            description: element['description'],
            url: element['url'],
          );

          datatobesaved.add(articleModel);
        }
      });
    }
  }
}
