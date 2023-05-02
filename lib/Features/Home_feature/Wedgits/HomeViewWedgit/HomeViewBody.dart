import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/FetureBookItemListView.dart';
import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/HomeViewHeader.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        children: const [
          HomeHeader(),
          FetureBookItemListView(),
        ],
      ),
    );
  }
}
