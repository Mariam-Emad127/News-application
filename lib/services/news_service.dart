import 'package:dio/dio.dart';
import '../model/article_model.dart';

class NewsService{
late final Dio dio;
NewsService(this.dio);
Future<List<ArticleModel>> GetNews({required String category})async {
 try {
    Response response = await dio.get(
       "https://newsapi.org/v2/top-headlines?country=us&apiKey=322bf8e0559d4b77b3bc30aee1e1171c&category=$category");

   Map<String, dynamic> jsonData = response.data;

   List<dynamic>articles = jsonData['articles'];

   List<ArticleModel> articlesList = [];

   for (var article in articles) {
     ArticleModel articleModel = ArticleModel(
       //source: Source(id: article["source"]["id"], name: article["source"]["name"]),
         image: article ["urlToImage"],
         title: article["title"],
         subTitle: article["description"]

     );

     articlesList.add(articleModel);
   }
   return articlesList;
  
 } catch(e){
return [];
 }
}
}
