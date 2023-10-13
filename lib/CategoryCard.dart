
import 'package:flutter/material.dart';
import 'package:news_application/model/category_model.dart';
import 'package:news_application/view/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category: category.categoryName,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(category.image),
                  fit: BoxFit.fill
              )

          ),
          child: Center(
            child: Text(category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),


          ),

        ),
      ),
    );
  }
}
