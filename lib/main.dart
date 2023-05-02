import 'package:bookly_git/Features/Home_feature/HomeView.dart';
import 'package:bookly_git/Features/Splash_feature/SplashView.dart';
import 'package:bookly_git/Utils/AppColors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

 class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor:AppColors.primaryColor,
      ),
      routes: {
        SplashView.id:(context) => SplashView(),
        HomeView.id:(context) => HomeView(),
      },
      initialRoute: SplashView.id,
    );
  }
}