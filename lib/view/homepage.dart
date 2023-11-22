 import 'package:flutter/material.dart';
import 'package:news_application/CategoryCard.dart';
import 'package:news_application/widgets/CategoriesListView.dart';
import 'package:news_application/widgets/newa_tile.dart';
import 'package:news_application/widgets/news_list_view.dart';
import 'package:news_application/widgets/news_list_view_builder.dart';
class home extends StatelessWidget {
  const home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
body:  Padding(
  padding: EdgeInsets.symmetric(horizontal: 8.0),
  child:   CustomScrollView(

    slivers: [

      SliverToBoxAdapter(child:CategoriesListView()),
      SliverToBoxAdapter(child: SizedBox(height: 30,),),

          SliverToBoxAdapter(

            //child:NewsListView() ,


      ),
NewsListViewBuilder(category: "general",),
    ],
  ),
)    
    ) );
  }
}

