import 'package:flutter/material.dart';


class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  static const String routeName = '/logout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Logout Screen'),
      ),
      body: Container(),
    );
  }
}


