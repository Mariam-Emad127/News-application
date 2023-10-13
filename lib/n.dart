//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_application/services/news_service.dart';
// import 'package:news_application/widgets/newa_tile.dart';
//
// import '../model/article_model.dart';
//
// class  NewsListView extends StatefulWidget {
//   const  NewsListView({super.key});
//
//   @override
//   State< NewsListView> createState() => NewsListViewState();
// }
//
// class NewsListViewState extends State< NewsListView> {
//   bool isLoading=true;
//   List<ArticleModel>articles=[];
//   @override
//   void initState()  {
//     super.initState();
//     GetGeneraalNews();
//
//   }
//   Future<void> GetGeneraalNews()async {
//
//     articles=await NewsService(Dio()).GetNews();
//     setState(() {
//
//     });
//     isLoading=false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading?SliverToBoxAdapter(child: Center(child:   Column(
//       children: [
//         SizedBox(height: 200,),
//         CircularProgressIndicator(),
//       ],
//     )),): SliverList(
//
//         delegate: SliverChildBuilderDelegate(
//             childCount: articles.length,
//                 (context, index) {
//               return  Padding(
//                 padding: const EdgeInsets.only(bottom: 22),
//                 child: NewsTile(articleModel:articles[index]),
//               );
//
//             }
//         )
//     );
//   }
// }
