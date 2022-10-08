import 'package:flutter/material.dart';

class OpeningHoursScreen extends StatelessWidget {
  const OpeningHoursScreen({super.key});

  static const String routeName = '/open';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opening Hours Screen'),
      ),
      body: Container(),
    );
  }
}
