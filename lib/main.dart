import 'package:flutter/material.dart';
import './preview.dart';
import './home_page.dart';
import './login_page.dart';
import './final_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'preview',
      // initialRoute: 'home_page',
      // initialRoute: 'login_page',
      routes: {
        'preview': (context) => preView(),
        'home_page': (context) => MyHomePage(),
        'login_page': (context) => loginPage(),
        'final_page': (context) => MyFinalPage(),
      },
    ),
  );
}
