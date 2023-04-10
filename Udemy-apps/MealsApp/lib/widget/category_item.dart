import 'package:flutter/material.dart';
import 'package:my_meals_app/Screen/category_item_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  const CategoryItem(
      {super.key, required this.title, required this.color, required this.id});

  void selectCategory(BuildContext cntx) {
    Navigator.of(cntx).pushNamed(
      '/category-meals',
      arguments: {
        'id': id,
        'color': color,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: () => selectCategory(context),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title),
      ),
    );
  }
}
