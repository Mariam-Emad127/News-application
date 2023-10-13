import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/model/article_model.dart';

import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;
  List<ArticleModel> articles = [];

  var future;

  @override
  void initState() {
    super.initState();
    // GetGeneraalNews();
    future = NewsService(Dio()).GetNews(category: widget.category);
  }

  // Future<void> GetGeneraalNews() async {
  //   articles = await NewsService(Dio()).GetNews();
  //   setState(() {});
  //   isLoading = false;
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text("oops there was error  try again"),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  CircularProgressIndicator(),
                ],
              )),
            );
          }
        });
    // return isLoading?SliverToBoxAdapter(child: Center(child:   Column(
    //   children: [
    //     SizedBox(height: 200,),
    //     CircularProgressIndicator(),
    //   ],
    // )),)
    //
    //     :articles.isNotEmpty? NewsListView(articles: articles)
    //
    //     :const SliverToBoxAdapter(child: Text( "oops there was error  try again"),);
  }
}
