import 'package:flutter/material.dart';
import 'package:news_application/view/homepage.dart';
import 'package:dio/dio.dart';
import 'package:news_application/services/news_service.dart';
void main() {
 // GetNewws();
  //NewsService(Dio()).GetNews();
  runApp(const NewsApp());
}
final dio = Dio();

// void GetNewws() async {
//   final response =
//   await dio.get
//     ('https://newsapi.org/v2/top-headlines?country=eg&apiKey=322bf8e0559d4b77b3bc30aee1e1171c&category=general');
//   print(response);
// }

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:home(),
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',


    );
  }
}

