import 'package:flutter/material.dart';
import 'package:teacher_app/pages/classPage.dart';
import 'package:teacher_app/pages/home_page.dart';
import 'package:teacher_app/pages/profile.dart';
import 'package:teacher_app/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        SplashPage.id:(context)=> SplashPage(),
        HomePage.id:(context)=> HomePage(),
        ProfilePage.id:(context)=> ProfilePage(),
        ClassPage.id:(context)=> ClassPage(),
      },
    );
  }
}