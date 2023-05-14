import 'package:bookly_git/Features/Home/Wedgits/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}
