import 'package:flutter/material.dart';

import '../../models/models.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  const ProductListTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      title: Text(product.name, style: Theme.of(context).textTheme.headline6),
      subtitle: Text(product.description,
          style: Theme.of(context).textTheme.headline5),
    );
  }
}
