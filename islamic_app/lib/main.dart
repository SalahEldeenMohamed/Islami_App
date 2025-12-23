import 'package:flutter/material.dart';

import 'Home/home_screen.dart';
import 'my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (context) => HomeScreen()},
      theme: MyThemeData.lightMode,
    );
  }
}
