import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff041F60),
      appBar: AppBar(
        backgroundColor: Color(0xff041F60),
        elevation: 0.0,
      ),
      body: Center(
        child: Lottie.asset(
          'images/404.json',
        ),
      ),
    );
  }
}
