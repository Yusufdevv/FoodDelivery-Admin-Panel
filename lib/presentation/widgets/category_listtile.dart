import 'package:flutter/material.dart';

import '../../models/models.dart';

class CategoryListTile extends StatelessWidget {
  final Category category;
  final Function()? onTap;
  const CategoryListTile(
      {Key? key, required this.category, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(category.imageUrl, height: 25),
      title: Text(category.name, style: Theme.of(context).textTheme.headline6),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Text(category.description,
            style: Theme.of(context).textTheme.headline5),
      ),
    );
  }
}
