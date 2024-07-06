import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Beauty Product',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),))
        ],
      ),
    );
  }
}
