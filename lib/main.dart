import 'package:bookly_git/Features/book_details/views/book_details_view.dart';
import 'package:bookly_git/Features/Home/views/home_view.dart';
import 'package:bookly_git/Features/Splash/views/splash_view.dart';
import 'package:bookly_git/Utils/AppColors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Models/BookModel.dart';

Future<void> main() async {
  runApp(const BooklyApp());
}



class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      routes: {
        SplashView.id: (context) => SplashView(),
        HomeView.id: (context) => HomeView(),
        DescriptionView.id:(context) => DescriptionView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
