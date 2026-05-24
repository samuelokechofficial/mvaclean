import 'package:flutter/material.dart';
import 'package:barikafoods/pages/splash_page.dart';
import 'package:barikafoods/pages/home_page.dart';
import 'package:barikafoods/pages/category_page.dart';
import 'package:barikafoods/pages/item_detail_page.dart';
import 'package:barikafoods/constants/colors.dart';

void main() {
  runApp(const BarikaApp());
}

class BarikaApp extends StatelessWidget {
  const BarikaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barika Foods',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackground,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/category': (context) => const CategoryPage(),
        '/detail': (context) => const ItemDetailPage(),
      },
    );
  }
}
