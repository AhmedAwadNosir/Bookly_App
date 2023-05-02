import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/HomeViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body:HomeViewBody() ,
    ));
  }
}
