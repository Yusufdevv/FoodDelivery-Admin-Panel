import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/config/theme.dart';
import 'package:food_delivery_admin_panel/presentation/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
