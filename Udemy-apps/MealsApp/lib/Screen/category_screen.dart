import 'package:flutter/material.dart';
import 'package:my_meals_app/widget/category_item.dart';

import '../data/category_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(30),
        children: dummycategory
            .map(
              (e) => CategoryItem(color: e.color,id: e.id,title: e.title),
            )
            .toList(),
      ),
    );
  }
}
