import 'package:app_twitter_clon_flutter/page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TwitterApp());

class TwitterApp extends StatelessWidget {
  const TwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white
        ),
        primaryColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(56, 161, 243, 1)
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(56, 161, 243, 1)
        )
      ),
      home: const HomePage()
    );
  }
}