import 'dart:async';

import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splash_page_id';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 2500),
        () => Navigator.pushReplacementNamed(context, HomePage.id));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                  image: DecorationImage(
                image: AssetImage('assets/images/pmLogo.png',),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
