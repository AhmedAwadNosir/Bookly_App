import 'package:bookly_git/Features/Splash_feature/Wedgits/SplashViewBody.dart';
import 'package:bookly_git/Utils/AppImages.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const id = "SplashView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
