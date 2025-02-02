import 'package:adv_flutter_exam1/screen/Products/controller/product_provider.dart';
import 'package:adv_flutter_exam1/screen/Products/view/product_screen.dart';
import 'package:adv_flutter_exam1/screen/Products/view/splash_screen/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductsProvider(),)
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) =>  SplashScreen(),
        '/home':(context) => ProductScreen()
      },
    );
  }
}
