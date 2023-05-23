import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(title: const Text('Meals App')),
        GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                title: catData.title,
                color: catData.color,
                id: catData.id,
              ))
          .toList(),
    );
  }
}
