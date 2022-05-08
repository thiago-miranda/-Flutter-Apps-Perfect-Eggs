import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/splash.page.dart';
import 'package:perfect_eggs/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Eggs',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const SplashPage(),
    );
  }
}
