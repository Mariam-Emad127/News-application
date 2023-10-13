
import 'package:flutter/material.dart';
import 'package:news_application/model/category_model.dart';

import '../CategoryCard.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final  List <CategoryModel>categories=const[
  //CategoryModel(image: image, categoryName: categoryName),
  CategoryModel(
    image: 'assets/busniss.jpeg',
    //image: 'assets/business.avif',
    categoryName: 'Business',
  ),
  CategoryModel(
    image: 'assets/entertaiment.avif',
    categoryName: 'Genral',
  ),
  CategoryModel(
    image: 'assets/health.avif',
    categoryName: 'Health',
  ),
  CategoryModel(
    image: 'assets/science.avif',
    categoryName: 'Science',
  ),
  CategoryModel(
    image: 'assets/technology.jpeg',
    categoryName: 'Technology',
  ),
  CategoryModel(
    image: 'assets/sprtt.jpeg',
    categoryName: 'Sports',
  ),
  CategoryModel(
    image: 'assets/fashion.jpeg',
    categoryName: 'fashion',
  ),
    CategoryModel(
      image: 'assets/environment.jpeg',
      categoryName: 'environment',
    ),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 90,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 8,
    itemBuilder: (context,index ){
    return  CategoryCard(category:categories[index],);

    }


    ),
    )
    ;
  }
}
