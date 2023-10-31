import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/services/news_service.dart';

import '../model/article_model.dart';
import 'newa_tile.dart';

class  NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

   const NewsListView({super.key,required this.articles});

  @override


  @override
  Widget build(BuildContext context) {
    return  SliverList(

        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
                (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(articleModel:articles[index]),
          );

        }
        )
    );
  }
}

//
// import 'package:flutter/cupertino.dart';
//
// import 'newa_tile.dart';
//
// class NewsListView extends StatelessWidget {
//   const NewsListView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//         delegate: SliverChildBuilderDelegate((context, index) {
//           return   NewsTile();
//
//         }
//         )
//     );
//
//
//     //   ListView.builder(
//     //     physics: NeverScrollableScrollPhysics(),
//     //     shrinkWrap: true,
//     //     itemCount:8,
//     //     itemBuilder:(context,index){
//     //       return  NewsTile();
//     //     }
//     // );
//   }
// }
