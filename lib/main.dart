import 'package:flutter/material.dart';
import 'package:instagram_clone/LoginPage.dart';
import 'package:instagram_clone/MainPage.dart';



void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const LoginPage(),
      '/main':(context) => const MainPage(),

    },
  ));
}

