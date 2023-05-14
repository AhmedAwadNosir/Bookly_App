import 'package:bookly_git/Features/Home/views/home_view.dart';
import 'package:bookly_git/Features/Splash/Wedgits/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const id = "SplashView";
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigationControl();
    // TODO: implement initStatef
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void navigationControl() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushNamed(context, HomeView.id);
      },
    );
  }
}
