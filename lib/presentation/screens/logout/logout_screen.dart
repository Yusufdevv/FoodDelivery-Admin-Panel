import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  static const String routeName = '/logout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(),
    );
  }
}


