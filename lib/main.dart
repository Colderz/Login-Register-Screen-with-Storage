import 'package:flutter/material.dart';
import 'package:local_storage_first_step/theme/routes.dart';
import 'package:local_storage_first_step/views/opening_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter another step',
      routes: AppRoutes.define(),
      home: OpeningScreen(),
    );
  }
}
