import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-item';

  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: Center(
        child: Text('Happy Learning!',),
      ),
    );
  }
}

// GridView(
// padding: const EdgeInsets.all(25),
// children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id, catData.title, catData.color,),).toList(),
// gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
// maxCrossAxisExtent: 200,
// childAspectRatio: 3 / 2,
// crossAxisSpacing: 20,
// mainAxisSpacing: 20,
// ),
