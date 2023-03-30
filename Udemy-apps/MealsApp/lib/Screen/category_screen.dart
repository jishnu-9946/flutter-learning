import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_meals_app/widget/category_item.dart';

import '../data/category_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(title: e.title, color: e.color))
            .toList(),
      ),
    );
  }
}
