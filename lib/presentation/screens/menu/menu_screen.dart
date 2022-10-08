import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/config/responsive.dart';
import 'package:food_delivery_admin_panel/models/models.dart';

import '../../widgets/widgets.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const String routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Restaurant Menu',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Product.products.length,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                product: Product.products[index],
                                index: index,
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // #categories and products
                    Responsive.isWideDesktop(context) ||
                            Responsive.isDesktop(context)
                        ? Container(
                            constraints: const BoxConstraints(
                              minHeight: 300,
                              maxHeight: 1000,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: _buildCategories(context),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: _buildProducts(context),
                                )
                              ],
                            ),
                          )
                        : Column(
                            children: [
                              _buildCategories(context),
                              const SizedBox(height: 10),
                              _buildProducts(context)
                            ],
                          ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(minHeight: 75),
                      color: Theme.of(context).colorScheme.primary,
                      child: const Center(child: Text('data')),
                    )
                  ],
                ),
              ),
            ),
          ),
          if (Responsive.isWideDesktop(context) ||
              Responsive.isDesktop(context))
            Expanded(
              flex: 1,
              child: Container(
                margin:
                    const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 20.0),
                color: Theme.of(context).colorScheme.background,
                child: const Center(child: Text('Add here something')),
              ),
            )
        ],
      ),
    );
  }

  Container _buildCategories(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text('Categories', style: Theme.of(context).textTheme.headline4),
          const SizedBox(height: 20),
          ...Category.categories.map((category) {
            return CategoryListTile(
              category: category,
            );
          }).toList(),
        ],
      ),
    );
  }

  Container _buildProducts(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text('Products', style: Theme.of(context).textTheme.headline4),
          const SizedBox(height: 20),
          ...Product.products.map((product) {
            return ProductListTile(product: product);
          }).toList(),
        ],
      ),
    );
  }
}
