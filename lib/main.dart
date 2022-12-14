import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/category/category_bloc.dart';
import 'blocs/product/product_bloc.dart';
import 'config/theme.dart';
import 'models/models.dart';
import 'presentation/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryBloc>(
            create: (context) => CategoryBloc()
              ..add(LoadCategories(categories: Category.categories))),
        BlocProvider<ProductBloc>(
            create: (context) => ProductBloc(categoryBloc: BlocProvider.of<CategoryBloc>(context))
              ..add(LoadProducts(products: Product.products))),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery Admin',
        theme: theme(),
        initialRoute: '/menu',
        routes: {
          MenuScreen.routeName: (context) => const MenuScreen(),
          DashboardScreen.routeName: (context) => const DashboardScreen(),
          LogoutScreen.routeName: (context) => const LogoutScreen(),
          OpeningHoursScreen.routeName: (context) => const OpeningHoursScreen(),
        },
      ),
    );
  }
}
